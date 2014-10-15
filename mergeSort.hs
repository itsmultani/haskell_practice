mergeSort :: (Ord a) => [a] -> [a]

mergeSort x = case x of
               [] -> [] 
               [x] -> [x]
               x -> mergeSort' (mergeSort firstHalf) (mergeSort secondHalf)
               where mergeSort' = \x y -> case x of 
                                          x:xs -> case y of   
                                                    y:ys -> if (x > y) then y:x:(mergeSort' xs ys) else x:y:(mergeSort' xs ys)
                                                    [] -> (x:xs)
                                          [] -> case y of 
                                                  [] -> []
                     (firstHalf, secondHalf) = split x 

split :: [a] -> ([a], [a])
split [] = ([], [])
split [x] = ([x], [])
split (x:y:xys) = (x:xs, y:ys) where (xs, ys) = split xys
