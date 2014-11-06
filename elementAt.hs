elementAt :: [a] -> Int -> a

elementAt [] _ = undefined
elementAt xs num = if length xs < num then undefined else xs !! num
