require Integer

Stream.unfold( {0,1}, fn {x1,x2} -> { x1,{x2, x1+x2} } end) 
|> Enum.take_while( &(&1 < 4_000_000) ) 
|> Enum.filter( &Integer.even?/1 ) 
|> Enum.sum
|> IO.puts
