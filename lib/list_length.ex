defmodule ListLength do
  @moduledoc """
  Module to calculate the length of an list
  """

  def call(list) when is_list(list), do: list_length(list, 0)
  def call(_list), do: :invalid_argument

  defp list_length([], acc), do: acc

  defp list_length([_head | tail], acc) do
    acc = acc + 1
    list_length(tail, acc)
  end
end
