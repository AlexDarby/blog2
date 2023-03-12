defmodule Blog2.PostsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Blog2.Posts` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        body: "some body",
        title: "some title"
      })
      |> Blog2.Posts.create_post()

    post
  end
end
