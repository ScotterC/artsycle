defmodule Artsycle.Users.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Artsycle.Users.User


  schema "users" do
    field :email, :string
    field :first_name, :string
    field :last_name, :string
    field :username, :string
    field :permalink, :string
    field :type, :string
    field :deleted_at, :utc_datetime

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:email, :first_name, :last_name, :username])
    |> validate_required([:email, :first_name, :last_name, :username])
  end
end
