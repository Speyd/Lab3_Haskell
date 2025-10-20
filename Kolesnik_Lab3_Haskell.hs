-- Завдання 1: updateAt
updateAt :: Int -> a -> [a] -> [a]
updateAt _ _ [] = []
updateAt 0 newVal (_:xs) = newVal : xs
updateAt n newVal (x:xs)
  | n < 0     = x:xs
  | otherwise = x : updateAt (n-1) newVal xs

-- Завдання 2: update_dict (Haskell версия)
updateDict :: (Eq k) => [(k, v)] -> k -> v -> [(k, v)]
updateDict [] _ _ = []
updateDict ((k',v'):xs) key value
  | k' == key = (k', value) : xs
  | otherwise = (k',v') : updateDict xs key value


-- Завдання 3: append_tuple (Haskell: кортеж → список)
appendTuple :: [a] -> a -> [a]
appendTuple lst item = lst ++ [item]


-- Завдання 4: Person и incrementAge
data Person = Person { name :: String, age :: Int } deriving Show

incrementAge :: Person -> Person
incrementAge p = p { age = age p + 1 }


-- Завдання 5: push (Haskell версия)
push :: [a] -> a -> [a]
push stack item = item : stack


-- Завдання 6: removeAt
removeAt :: Int -> [a] -> [a]
removeAt _ [] = []
removeAt 0 (_:xs) = xs
removeAt n (x:xs)
  | n < 0     = x:xs
  | otherwise = x : removeAt (n-1) xs


main :: IO ()
main = do
    putStrLn "=== Тест updateAt ==="
    print $ updateAt 1 99 [10, 20, 30]
    print $ updateAt 0 42 []
    print $ updateAt 5 7 [1,2,3] 

    putStrLn "\n=== Тест updateDict ==="
    let d1 = [("a", 1), ("b", 2)]
    print $ updateDict d1 "b" 99  
    print d1                           

    putStrLn "\n=== Тест appendTuple ==="
    print $ appendTuple [1,2,3] 4      
    print $ appendTuple [] 99           

    putStrLn "\n=== Тест incrementAge ==="
    let p = Person "Anna" 25
    print $ incrementAge p               
    print p                             

    putStrLn "\n=== Тест push ==="
    let s1 = [3,2,1]
    print $ push s1 4                   
    print s1                             

    putStrLn "\n=== Тест removeAt ==="
    print $ removeAt 1 [10,20,30]       
    print $ removeAt 5 [1,2,3]         
