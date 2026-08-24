module Lab where


-- Ejercicio 1

sumTam :: [Figura] -> Int
sumTam [] = 0
sumTam (x:xs) = tam x + sumTam xs
