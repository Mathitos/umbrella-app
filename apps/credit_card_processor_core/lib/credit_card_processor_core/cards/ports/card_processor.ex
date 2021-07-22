defmodule CreditCardProcessorCore.Cards.Ports.CardProcessor do
  @moduledoc """
  Abstracts every communication Core has to make with a card processor.
  """

  alias CreditCardProcessorCore.Cards.Card

  @doc """
  Starts the process of issuing a card with a card scheme through a processor.
  """
  @callback issue_card(map()) :: {:ok, Card.t()} | {:error, any()}
  def issue_card(request), do: adapter().issue_card(request)

  defp adapter, do: config()[:adapter]
  defp config, do: Application.get_env(:credit_card_processor_core, __MODULE__)
end
