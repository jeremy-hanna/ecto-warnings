defmodule MyApp.PostTest do
  use MyApp.DataCase, async: false

  import MyApp.Factory

  alias MyApp.Post

  test "it runs works" do
    post =
      build(:post, %{
        title: "A very snazzy title",
        views: 7,
        comments: [
          build(:comment)
        ]
      })

    assert %Post{} = post
  end

  test "it emits a warning when Preloads" do
    post =
      build(:post, %{
        title: "A very snazzy title",
        views: 7,
        comments: [
          build(:comment)
        ]
      })
      |> MyApp.Repo.preload(:comments)

    assert %Post{} = post
  end
end
