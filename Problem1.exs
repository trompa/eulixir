defmodule Problem1 do
	def sum(number, limit) do
		multiples_of_upto(number,limit) |> Enum.sum
	end

	def multiples_of_upto(number, limit) do
		1..div(limit, number) |> Enum.to_list |> Enum.map &(&1*number)
	end
end

s = Problem1.sum(3, 999) + Problem1.sum(5, 999) - Problem1.sum(15, 999)

IO.puts s
