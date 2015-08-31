defmodule ElixirPhoenix.PageController do
  use ElixirPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
