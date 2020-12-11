defmodule VnepomucenoWeb.PageController do
  use VnepomucenoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
