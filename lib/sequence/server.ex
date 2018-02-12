# server.ex

defmodule Sequence.Server do
    use GenServer

    # multiple handle_call functions with multiple paramaters can be used
    def handle_call(:next_number, _from, current_number) do
        { :reply, current_number, current_number+1 }
    end
end

# usage
# iex(1)> { :ok, pid} = GenServer.start_link(Sequence.Server, 100)
# {:ok, #PID<0.148.0>}
# iex(2)> GenServer.call(pid, :next_number)
# 100
# iex(3)> GenServer.call(pid, :next_number)
# 101
# iex(4)> GenServer.call(pid, :next_number)
# 102
# iex(5)> GenServer.call(pid, :next_number)
# 103

