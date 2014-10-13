quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort x = case x of
                x:xs -> case xs of 
                  y:ys -> (quickSort (getSmaller x xs)) ++ [x] ++ (quickSort (getLarger x xs))
                  [] -> [x]

getSmaller :: (Ord a) => a -> [a] -> [a]
getSmaller x [] = []
getSmaller x xs = foldr (\y acc -> if (y <= x) then y:acc else acc) [] xs

getLarger :: (Ord a) => a -> [a] -> [a]
getLarger x [] = []
getLarger x xs = foldr (\y acc -> if (y > x) then y:acc else acc) [] xs
