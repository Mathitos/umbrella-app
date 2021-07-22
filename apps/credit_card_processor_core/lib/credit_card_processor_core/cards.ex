defmodule CreditCardProcessorCore.Cards do
  @moduledoc """
  The Cards context.
  """

  import Ecto.Query, warn: false
  alias CreditCardProcessorCore.Repo

  alias CreditCardProcessorCore.Cards.Card
  alias CreditCardProcessorCore.Cards.Ports.CardProcessor

  @doc """
  Issue a new card.

  ## Examples

      iex> issue_card(params)
      {:ok, %Card{}}

  """
  def issue_card(params) do
    CardProcessor.issue_card(params)
  end

  @doc """
  Create a new card on the database
  """

  def create_card(params) do
    %Card{}
    |> Card.changeset(params)
    |> Repo.insert
  end
end
