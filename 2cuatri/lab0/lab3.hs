-- Ejercicio 3 Laboratorio 0

--a) Variables: 
-- Entrada [Num] con noción de Ord
-- Salida Bool
f3a :: (Num a, Ord  a) => [a] -> Bool
f3a [] = True
f3a (x:xs) = x>0 && f3a xs

-- b) Variables:
-- Entradas: a y [a], con Eq
-- Salida: Bool
f3b :: Eq a => [a] -> a -> Bool
f3b [] _ = False
f3b (x:xs) y = x==y || f3b xs  y

-- d) Variables:
-- Entrada: [a] con Eq
-- Salida: Bool
f3d :: Eq a => [a] -> Bool
f3d [] = False
f3d (y:[]) = False
f3d (x:(y:xs)) = x==y || f3d (y:xs)
