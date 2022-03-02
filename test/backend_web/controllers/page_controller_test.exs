defmodule BackendWeb.PageControllerTest do
  use BackendWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, Routes.page_path(conn, :index))
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
