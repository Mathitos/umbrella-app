defmodule CreditCardProcessorCore.Repo.Migrations.CreateCards do
  use Ecto.Migration

  def change do
    create table(:cards) do
      add :number, :string
      add :owner, :string
      add :cvv, :string

      timestamps()
    end

  end
end
