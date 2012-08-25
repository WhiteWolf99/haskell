--recursive maximum calculation

maximum' [] = error "maximum on an empty list"
maximum' [x] = x
maximum' (x:xs) 
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = maximum' xs

--quicksort

quicksort:: (Ord a) => [a] -> [a]

quicksort [] = []
quicksort (x:xs) =
   let smallerSort = quicksort [a | a <- xs, a <= x]
       biggerSort = quicksort [a | a <- xs,  a > x]
   in  smallerSort ++ [x] ++ biggerSort
