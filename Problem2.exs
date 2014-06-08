Stream.unfold( {0,1}, fn {x1,x2} -> { x1,{x2, x1+x2} } end) 
|> Enum.take_while( &(&1 < 4_000_000) ) 
|> Enum.filter( &( rem(&1,2) == 0) ) 
|> Enum.sum
|> Io.puts