# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :pick_a_book,
  ecto_repos: [PickABook.Repo]

# Configures the endpoint
config :pick_a_book, PickABookWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "//PQ4xzuAmJTgGvrU6/PL5IvPRWN+bPJKbs283dI6b/Qspu1KHPSJGOOZijdsY9H",
  render_errors: [view: PickABookWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PickABook.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

  # Guardian config
config :PickABook, PickABook.Guardian,
       issuer: "PickABook",
       secret_key: "DYiFBGOL19YHqx5pYgQsRhmj9FNCm9eKWVULfotAEPuMz88PvbnYf1boIVZK7tus"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
