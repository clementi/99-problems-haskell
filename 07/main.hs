data Node a = One a | Many [Node a] deriving (Show)

flatten :: [Node a] -> [a]
flatten [] = []
flatten ((One x):xs) = x : flatten xs
flatten ((Many xs):ys) = flatten xs ++ flatten ys
