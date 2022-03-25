defmodule BackendWeb.CategoryControllerTest do
  use BackendWeb.ConnCase

  describe "categories" do
    test "list all categories", %{conn: conn} do
      conn = get(conn, Routes.category_path(conn, :index))
      assert json_response(conn, 200) == %{"categories" => []}
    end

    test "given a payload create a category", %{conn: conn} do
      conn = post(conn, Routes.category_path(conn, :create, %{name: "Sports", description: "Sports news and events"}))
      assert %{"name" => _name, "description" => _description, "id" => _id} = json_response(conn, 201)
    end

    test "get a category by id", %{conn: conn} do
      conn = post(conn, Routes.category_path(conn, :create, %{name: "Sports", description: "Sports news and events"}))
      assert %{"id" => id} = json_response(conn, 201)
      conn = get(conn, Routes.category_path(conn, :show, id))
      assert %{"name" => _name, "description" => _description, "id" => _id} = json_response(conn, 200)
    end
  end
end
