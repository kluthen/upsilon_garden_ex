defmodule UpsilonGardenExWeb.PageController do
  use UpsilonGardenExWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
