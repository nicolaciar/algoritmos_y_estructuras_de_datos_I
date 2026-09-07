-- Ejercicio 1

-- a)
sumCuad :: Num a => [a] -> a
sumCuad [] = 0
sumCuad (x:xs) = x*x + sumCuad xs

-- b)
iga :: (Eq a) => a -> [a] -> Bool
iga e [] = True
iga e (x:xs) = x == e && iga e xs

-- c)

