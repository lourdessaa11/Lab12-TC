import Data.List (sortBy)

phones :: [[(String, String)]]
phones = [
    [("make", "Nokia"), ("model", "216"), ("color", "Black")],
    [("make", "Mi Max"), ("model", "2"), ("color", "Gold")],
    [("make", "Samsung"), ("model", "7"), ("color", "Blue")]]

getValue :: String -> [(String, String)] -> String
getValue key dict = case lookup key dict of
    Just value -> value
    Nothing    -> ""

-- Ordenar numéricamente por clave "model"
sortByKeyNumeric :: String -> [[(String, String)]] -> [[(String, String)]]
sortByKeyNumeric key = sortBy (\a b -> 
    compare (read (getValue key a) :: Int) (read (getValue key b) :: Int))

main :: IO ()
main = do
    let sorted = sortByKeyNumeric "model" phones
    mapM_ print sorted
    