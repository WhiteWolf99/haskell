--simple function
doubleMe x = x + x

--using function inside another function
doubleUs x y = doubleMe x + doubleMe y

--if statement
doubleSmallNumber x = if x > 100
                      then x
                      else x * 2

--list comprehension
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

--list comprehension
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

--comprehension using tuples and lists
triangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10] ]

