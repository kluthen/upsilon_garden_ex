# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :upsilon_garden_ex,
  ecto_repos: [UpsilonGardenEx.Repo]

# Configures the endpoint
config :upsilon_garden_ex, UpsilonGardenExWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tmuB617/xpcQedWQs5GOc7oMt/vUNXt+HW8UnnodN26/hUorDqTzO4xG431o9+U2",
  render_errors: [view: UpsilonGardenExWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: UpsilonGardenEx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
