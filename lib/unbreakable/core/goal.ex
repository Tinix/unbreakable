defmodule Unbreakable.Core.Goal do
  use Ecto.Schema
  import Ecto.Changeset

  schema "goals" do
    field :title, :string
    field :is_active, :boolean, default: true
    has_many :statuses, Unbreakable.Core.Status
    has_one :streaks, Unbreakable.Core.Streak

    timestamps()
  end

  @doc false
  def changeset(goal, attrs) do
    goal
    |> cast(attrs, [:title, :is_active])
    |> validate_required([:title, :is_active])
  end
end
