defmodule ProcessorB do
  @moduledoc """
  Documentation for `ProcessorB`.
  """

  @behaviour CreditCardProcessorCore.Cards.Ports.CardProcessor

  alias CreditCardProcessorCore.Cards

  @impl true
  def issue_card(request) do
    {:error, :processor_in_maintenance}
  end

end
