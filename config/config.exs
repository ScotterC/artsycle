# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :artsycle,
  ecto_repos: [Artsycle.Repo]

# Configures the endpoint
config :artsycle, ArtsycleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tOX145uY39qNYhk8IMStc4mNYlw+FBdEkqkV142vugLqy1nFAAypNlIBAO0L/n6W",
  render_errors: [view: ArtsycleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Artsycle.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
