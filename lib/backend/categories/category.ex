defmodule Backend.Categories.Category do
  @moduledoc false

  use Ecto.Schema

  import Ecto.Changeset

  @fields  ~w{name description}a
  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "categories" do
    field :name, :string
    field :description, :string

    timestamps()
  end

  def create_changeset(attrs \\ %{}) do
    %__MODULE__{}
    |> cast(attrs, @fields)
    |> validate_required(@fields)
    |> unique_constraint(:name, message: "Category already exist")
  end
end
