defmodule ArtsycleWeb.ApiController do
  use ArtsycleWeb, :controller

  def index(conn, _params) do
    json conn, %{message: "Hello World"}
  end
end
