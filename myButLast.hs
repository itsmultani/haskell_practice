myButLast :: [a] -> a

myButLast [] = undefined
myButLast [x] = undefined
myButLast xs = case xs of 
                y:z:[] -> y
                y:ys -> myButLast ys
