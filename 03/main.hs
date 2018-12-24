at' :: Int -> [a] -> Maybe a
at' _ [] = Nothing
at' 0 _ = Nothing
at' 1 (x:xs) = Just x
at' n (_:xs) = at' (n - 1) xs
