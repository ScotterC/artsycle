require IEx
defmodule Artsycle.UsersTest do
  use Artsycle.DataCase

  alias Artsycle.Users

  describe "users" do
    alias Artsycle.Users.User

    @valid_attrs %{email: "some email", first_name: "some first_name", last_name: "some last_name", username: "some username"}
    @update_attrs %{email: "some updated email", first_name: "some updated first_name", last_name: "some updated last_name", username: "some updated username"}
    @invalid_attrs %{email: nil, first_name: nil, last_name: nil, username: nil}

    def user_fixture(attrs \\ %{}) do
      {:ok, user} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Users.create_user()

      user
    end

    test "list_users/0 returns all users" do
      user = user_fixture()
      {users, _} = Users.list_users({})
      assert hd(users) == user
    end

    test "list_artists/0 returns all artists" do
      user = user_fixture(type: "Artist")
      {users, _} = Users.list_artists({})
      assert hd(users) == user
    end

    test "get_user!/1 returns the user with given id" do
      user = user_fixture()
      assert Users.get_user!(user.id) == user
    end

    test "create_user/1 with valid data creates a user" do
      assert {:ok, %User{} = user} = Users.create_user(@valid_attrs)
      assert user.email == "some email"
      assert user.first_name == "some first_name"
      assert user.last_name == "some last_name"
      assert user.username == "some username"
    end

    test "create_user/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Users.create_user(@invalid_attrs)
    end

    test "update_user/2 with valid data updates the user" do
      user = user_fixture()
      assert {:ok, user} = Users.update_user(user, @update_attrs)
      assert %User{} = user
      assert user.email == "some updated email"
      assert user.first_name == "some updated first_name"
      assert user.last_name == "some updated last_name"
      assert user.username == "some updated username"
    end

    test "update_user/2 with invalid data returns error changeset" do
      user = user_fixture()
      assert {:error, %Ecto.Changeset{}} = Users.update_user(user, @invalid_attrs)
      assert user == Users.get_user!(user.id)
    end

    test "delete_user/1 deletes the user" do
      user = user_fixture()
      assert {:ok, %User{}} = Users.delete_user(user)
      assert_raise Ecto.NoResultsError, fn -> Users.get_user!(user.id) end
    end

    test "change_user/1 returns a user changeset" do
      user = user_fixture()
      assert %Ecto.Changeset{} = Users.change_user(user)
    end
  end
end