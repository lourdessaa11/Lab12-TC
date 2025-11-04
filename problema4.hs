-- Lista original
colores :: [String]
colores = ["rojo", "verde", "azul", "amarillo", "gris", "blanco", "negro"]

-- Elementos a borrar
aBorrar :: [String]
aBorrar = ["amarillo", "cafe", "blanco"]

-- Filtrar usando lambda
filtrarLista :: [String] -> [String] -> [String]
filtrarLista elementos borrar = 
    filter (\x -> not (x `elem` borrar)) elementos

main :: IO ()
main = do
    putStrLn "Lista original:"
    print colores
    putStrLn "\nElementos a borrar:"
    print aBorrar
    putStrLn "\nLista resultante:"
    print (filtrarLista colores aBorrar)