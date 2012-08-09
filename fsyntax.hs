-- function type definition
lucky :: (Integral a) => a -> String

-- function patter matching
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

-- factorial function
factorial :: (Integral a) => a -> a

factorial 0 = 1
factorial n =  n * factorial (n - 1)

-- basic version of adding two vectors
addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
-- addVectors a b  = (fst a + fst b, snd a + snd b)

-- addVectors using pattern matching
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-- using guards max function
max' :: (Ord a) => a -> a -> a

max' a b
 | a > b = a
 | otherwise = b

-- calculating bmis (body mass indexes) from pairs of weights and heights
-- demonstrating the use of where statement inside function
calcbmis :: (RealFloat a) => [(a, a)] -> [a]

calcbmis xs = [bmi w h | (w, h) <- xs] 
      where bmi w h = w / h ^ 2

-- using case
head' :: [a] -> a  
head' xs = case xs of [] -> error "No head for empty lists!"  
		      (x:_) -> x  












