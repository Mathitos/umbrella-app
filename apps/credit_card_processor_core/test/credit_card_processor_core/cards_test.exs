defmodule CreditCardProcessorCore.CardsTest do
  use CreditCardProcessorCore.DataCase

  alias CreditCardProcessorCore.Cards

  describe "cards" do
    test "issue a card" do
      assert {:ok, %Cards.Card{}} = Cards.issue_card(%{owner: "test user", number: "1234567890", cvv: "123"})
    end
  end
end
