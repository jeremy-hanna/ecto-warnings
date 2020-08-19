defmodule MyApp.Factory do
  use ExMachina.Ecto, repo: MyApp.Repo

  def post_factory do
    %MyApp.Post{
      title: "Title",
      views: 7,
      comments: [build(:comment)]
    }
  end

  def comment_factory do
    %MyApp.Comment{
      content: "Rabble rabble rabble"
    }
  end
end
