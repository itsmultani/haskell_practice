bubbleSort :: (Ord a) => [a] -> [a]
bubbleSort [] = []
bubbleSort x = case bubbleSort' x of
                 ys -> if (x == ys) then ys else bubbleSort ys
               where bubbleSort' = \x -> case x of 
                                          x:y:xs -> if (y < x) then y:(bubbleSort' $ x:xs) else x:(bubbleSort' $ y:xs)
                                          x -> x

