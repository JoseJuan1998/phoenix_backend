defmodule BackendWeb.CategoryView do
  use BackendWeb, :view

  def render("categories.json", %{categories: categories}) do
    %{categories: render_many(categories, __MODULE__, "category.json")}
  end

  def render("category.json", %{category: category}) do
    %{
      id: category.id,
      name: category.name,
      descripion: category.description
    }
  end
end
