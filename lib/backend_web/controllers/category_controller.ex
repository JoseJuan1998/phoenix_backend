defmodule BackendWeb.CategoryController do
  use BackendWeb, :controller

  alias Backend.Categories
  alias Backend.Categories.Category

  action_fallback BackendWeb.CategoryErrorController

  def index(conn, _params) do
    conn
    |> put_status(:ok)
    |> render("categories.json", categories: Categories.all())
  end

  def show(conn, params) do
    with  %Category{} = category <- Categories.show(params) do
      conn
      |> put_status(:ok)
      |> render("category.json", category: category)
    end
  end

  def create(conn, params) do
    with {:ok, category} <- Categories.create(params)  do
      conn
      |> put_status(201)
      |> render("category.json", category: category)
    end
  end
end
