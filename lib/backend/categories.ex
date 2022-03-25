defmodule Backend.Categories do
  @moduledoc false

  alias Backend.Categories.Category
  alias Backend.Repo

  def all do
    Repo.all(Category)
  end

  def show(%{"id" => id}) do
    Repo.get(Category, id)
  end

  def create(params) do
    params
    |> Category.create_changeset()
    |> Repo.insert()
  end
end
