defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    conn
    |> put_flash(:info, "Welcome to Phoenix, from flash info!")
    |> put_flash(:error, "Let's pretend we have an error.")
    |> render("index.html")
  end

  # def show(conn, _params) do
  #   page = %{title: "foo"}

  #   render(conn, "show.json", page: page)
  # end

  # def index(conn, _params) do
  #   pages = [%{title: "foo"}, %{title: "bar"}]

  #   render(conn, "index.json", pages: pages)
  # end

  def test(conn, _params) do
    render(conn, "test2.html")
  end

  # def index(conn, _params) do
  #   conn
  #   |> put_layout("admin.html")
  #   |> render("index.html")
  # end

  # Direct Response
  # def index(conn, _params) do
  #   conn
  #   |> put_resp_content_type("text/plain")
  #   |> send_resp(201, "201")
  # end

  # Redirect
  # def index(conn, _params) do
  #   redirect(conn, to: Routes.page_path(conn, :redirect_test))
  # end

  # def redirect_test(conn, _params) do
  #   render(conn, "index.html")
  # end
end
