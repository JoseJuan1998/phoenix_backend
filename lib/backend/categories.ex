defmodule Backend.Categories do
  @moduledoc false

  alias Backend.Repo
  alias Backend.Categories.Category

  def all do
    # [
    #   %{
    #     id: 1,
    #     name: "Sports"
    #   },
    #   %{
    #     id: 2,
    #     name: "News"
    #   },
    #   %{
    #     id: 3,
    #     name: "Entertainment"
    #   },
    #   %{
    #     id: 4,
    #     name: "Documental"
    #   }
    # ]
    Repo.all(Category)
  end
end
