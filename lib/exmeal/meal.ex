defmodule Exmeal.Meal do
  use Ecto.Schema
  import Ecto.Changeset

  @params [:description, :date, :calories]
  @primary_key {:id, :binary_id, autogenerate: true}

  @derive {Jason.Encoder, only: [:id, :description, :date, :calories]}

  schema "meals" do
    field(:description, :string)
    field(:date, :date)
    field(:calories, :float)

    timestamps()
  end

  def changeset(struct \\ %__MODULE__{}, params) do
    struct
    |> cast(params, @params)
    |> validate_required(@params)
  end
end
