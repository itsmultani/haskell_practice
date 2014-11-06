myLast :: [a] -> a

myLast [] = undefined
myLast [x] = x
myLast xs = case xs of 
             y:ys -> myLast (ys)
             
