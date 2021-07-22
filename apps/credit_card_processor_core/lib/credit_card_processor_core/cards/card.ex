defmodule CreditCardProcessorCore.Cards.Card do
  use Ecto.Schema
  import Ecto.Changeset

  schema "cards" do
    field :cvv, :string
    field :number, :string
    field :owner, :string

    timestamps()
  end

  @doc false
  def changeset(card, attrs) do
    card
    |> cast(attrs, [:number, :owner, :cvv])
    |> validate_required([:number, :owner, :cvv])
  end
end
