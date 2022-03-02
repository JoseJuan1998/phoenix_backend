defmodule BackendWeb.CategoryController do
  use BackendWeb, :controller

  alias Backend.Categories

  def index(conn, _params) do
    conn
    |> put_status(:ok)
    |> render("categories.json", categories: Categories.all())
  end
end
