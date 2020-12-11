# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :vnepomuceno,
  ecto_repos: [Vnepomuceno.Repo]

# Configures the endpoint
config :vnepomuceno, VnepomucenoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8WKSddTuHEZ2uPveyWOet2vHv5uBiA0wkq5+3Nj2ATeCaDQsaOIUMIOIIwIlPomh",
  render_errors: [view: VnepomucenoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Vnepomuceno.PubSub,
  live_view: [signing_salt: "eqyZp91I"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
