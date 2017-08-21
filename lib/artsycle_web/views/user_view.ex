defmodule ArtsycleWeb.UserView do
  use ArtsycleWeb, :view
  alias ArtsycleWeb.UserView
  import Kerosene.JSON

  def render("index.json", %{users: users, kerosene: kerosene, conn: conn}) do
    %{data: render_many(users, UserView, "user.json"), pagination: paginate(conn, kerosene)}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      email: user.email,
      name: name_for(user),
      permalink: user.permalink,
      username: user.username,
      type: user.type
    }
  end

  defp name_for(user) do
    if user.first_name && user.last_name do
      user.first_name <> " " <> user.last_name
    else
      nil
    end
  end

end
