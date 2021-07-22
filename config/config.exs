# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :credit_card_processor_core,
  ecto_repos: [CreditCardProcessorCore.Repo]

# Configures the endpoint
config :credit_card_processor_core, CreditCardProcessorCoreWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wE35sc6dCrSSJ1e443sEPc43jT0CfwpI9iv0iWHjIszl5OrHpKvmSsT1x72LVZuL",
  render_errors: [view: CreditCardProcessorCoreWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: CreditCardProcessorCore.PubSub,
  live_view: [signing_salt: "qZSp9pIO"]

config :credit_card_processor_core, CreditCardProcessorCore.Cards.Ports.CardProcessor,
  adapter: ProcessorA

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
