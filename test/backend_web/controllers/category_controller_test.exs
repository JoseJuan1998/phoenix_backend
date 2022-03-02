defmodule BackendWeb.CategoryControllerTest do
  use BackendWeb.ConnCase

  describe "categories" do
    test "list all categories", %{conn: conn} do
      conn = get(conn, Routes.category_path(conn, :index))
      assert json_response(conn, 200) == %{"categories" => []}
    end
  end
end
