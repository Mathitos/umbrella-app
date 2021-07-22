defmodule ProcessorA do
  @moduledoc """
  Documentation for `ProcessorA`.
  """

  @behaviour CreditCardProcessorCore.Cards.Ports.CardProcessor

  alias CreditCardProcessorCore.Cards

  @impl true
  def issue_card(request) do
    Cards.create_card(request)
  end

end
