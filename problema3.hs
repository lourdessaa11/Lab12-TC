-- Matriz original
matrix :: [[Int]]
matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]]

-- Usando lambda explícitamente con foldr y zipWith
transposeLambda :: [[a]] -> [[a]]
transposeLambda xss = 
    foldr (\row acc -> zipWith (\x col -> x:col) row (acc ++ repeat [])) 
          (take (length (head xss)) []) xss

main :: IO ()
main = do
    putStrLn "Matriz original:"
    mapM_ print matrix
    putStrLn "\nMatriz transpuesta:"
    mapM_ print (transposeLambda matrix)