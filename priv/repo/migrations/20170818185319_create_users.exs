defmodule Artsycle.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :first_name, :string
      add :last_name, :string
      add :username, :string
      add :permalink, :string
      add :type, :string
      add :deleted_at, :utc_datetime

      timestamps()
    end

  end
end
