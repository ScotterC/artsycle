defmodule ArtsycleWeb.Router do
  use ArtsycleWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/v1", ArtsycleWeb do
    pipe_through :api

    get "/", ApiController, :index
    resources "/users", UserController, except: [:new, :edit]
  end

  scope "/", ArtsycleWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", ArtsycleWeb do
  #   pipe_through :api
  # end
end
