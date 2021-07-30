# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :api_etl,
  ecto_repos: [ApiEtl.Repo]

# Configures the endpoint
config :api_etl, ApiEtlWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "yKWsoNgPG3ZF8J6SeqZ+yp7ro0QAZOabBmoNdDaOha8sHCkn3XfYSioZB87P9bPP",
  render_errors: [view: ApiEtlWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: ApiEtl.PubSub,
  live_view: [signing_salt: "4MowNtRf"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
