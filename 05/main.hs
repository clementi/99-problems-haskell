rev :: [a] -> [a]
rev [] = []
rev (x:xs) = (rev xs) ++ [x]

-- more efficient alternative, using an auxiliary function
rev' :: [a] -> [a]
rev' xs = rev'' [] xs
  where rev'' acc [] = acc
        rev'' acc (y:ys) = rev'' (y:acc) ys

