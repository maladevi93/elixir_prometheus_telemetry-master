defmodule Basic.Web.Router do
  @moduledoc false

  use Plug.Router

  plug Basic.Web.MetricsExporter

  plug Plug.Logger
  plug :match
  plug :dispatch

  get "/elixir" do
    send_resp(conn, 200, "I love <3 Elixir")
  end
  match _ do
    send_resp(conn, 404, "Hmmmm...that didn't work")
  end
end
