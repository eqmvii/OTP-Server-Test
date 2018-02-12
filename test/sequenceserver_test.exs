defmodule SequenceserverTest do
  use ExUnit.Case
  doctest Sequenceserver

  test "greets the world" do
    assert Sequenceserver.hello() == :world
  end
end
