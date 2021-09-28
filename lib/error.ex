defmodule Exmeal.Error do
  @keys [:result, :status]

  defstruct @keys

  def build(status, result) do
    %__MODULE__{
      result: result,
      status: status
    }
  end

  def meal_not_find_error, do: build(:not_found, "Meal not found")
end
