defmodule Exmeal.Meals.Delete do
  alias Exmeal.{Error, Meal, Repo}

  def call(id) do
    case Repo.get(Meal, id) do
      nil -> {:error, Error.meal_not_find_error()}
      meal -> Repo.delete(meal)
    end
  end
end
