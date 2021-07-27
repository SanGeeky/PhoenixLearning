defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  plug HelloWeb.Plugs.Locale, "en" when action in [:index]

  def index(conn, _params) do
    render(conn, "index.html")
  end

  # def show(conn, %{"messenger" => messenger}) do
  #   render(conn, "show.html", messenger: messenger)
  # end

  # Return Text
  # def show(conn, %{"messenger" => messenger}) do
  #   text(conn, "From messenger #{messenger}")
  # end

  # Return JSON
  # def show(conn, %{"messenger" => messenger}) do
  #   json(conn, %{id: messenger})
  # end

  # Return HTML
  # def show(conn, %{"messenger" => messenger}) do
  #   html(conn, """
  #    <html>
  #      <head>
  #         <title>Passing a Messenger</title>
  #      </head>
  #      <body>
  #        <p>From messenger #{Plug.HTML.html_escape(messenger)}</p>
  #      </body>
  #    </html>
  #   """)
  # end
end
