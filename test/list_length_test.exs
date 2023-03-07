defmodule ListLengthTest do
  use ExUnit.Case
  doctest ListLength

  describe "call/1" do
    test "returns the length of an list" do
      list = [1, 2, 3, 4]

      assert 4 == ListLength.call(list)
    end

    test "returns the length of any type of list" do
      float_list = [1.5, 2.5, 3.5, 4.5]
      string_list = ["test", "list"]
      atom_list = [:test]
      misc_list = ["test", 1, 5.5, :list]

      assert 4 == ListLength.call(float_list)
      assert 2 == ListLength.call(string_list)
      assert 1 == ListLength.call(atom_list)
      assert 4 == ListLength.call(misc_list)
    end

    test "returns 0 if list is empty" do
      list = []

      assert 0 == ListLength.call(list)
    end

    test "returns error when receive an invalid argument" do
      invalid = :not_a_list

      assert :invalid_argument == ListLength.call(invalid)
    end
  end
end
