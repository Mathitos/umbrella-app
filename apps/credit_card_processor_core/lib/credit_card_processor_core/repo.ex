defmodule CreditCardProcessorCore.Repo do
  use Ecto.Repo,
    otp_app: :credit_card_processor_core,
    adapter: Ecto.Adapters.Postgres
end
