module Lab where
 
import Figura
import FigurasEx


---------------------------------------------------------------------------------
-- TP1
-- Ejercicio 1

sumTam :: [Figura] -> Int
sumTam [] = 0
sumTam (x:xs) = tam x + sumTam xs

prodTam :: [Figura] -> Int
prodTam [] = 1
prodTam (x:xs) = tam x * prodTam xs

cuentaRombos :: [Figura] -> Int
cuentaRombos [] = 0
cuentaRombos (x:xs) | rombo x = 1 + cuentaRombos xs
                    | otherwise = cuentaRombos xs

cuentaRombosRojos :: [Figura] -> Int
cuentaRombosRojos [] = 0
cuentaRombosRojos (x:xs) | (rombo x && rojo x) = 1 + cuentaRombos xs
                         | otherwise = cuentaRombosRojos xs

ys1 :: [Figura]
ys1 = [(Circulo, Azul, 40), (Rombo, Rojo, 10)]

ys2 :: [Figura]
ys2 = [(Circulo, Rojo, 4), (Rombo, Rojo, 10)]

ys3 :: [Figura]
ys3 = [(Triangulo, Verde, 10)]

-- Ejercicio 2

sumTamMayor10 :: [Figura] -> Bool
sumTamMayor10 xs = sumTam xs > 10

ningFigTamMen7 :: [Figura] -> Bool
ningFigTamMen7 [] = True
ningFigTamMen7 (x:xs) = (tam x >= 7) && ningFigTamMen7 xs

--- Ejercicio 3

sumalista :: Num a => [a] -> a
sumalista [] = 0
sumalista (x:xs) = x + sumalista xs

--- Ejercicio 4

sumatoria :: [Int] -> Int
sumatoria [] = 0
sumatoria (x:xs) = x + sumatoria xs

productoria :: [Int] -> Int
productoria [] = 1
productoria (x:xs) = x * productoria xs

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial n

longitud :: Num a => [a] -> Int
longitud [] = 0
longitud (x:xs) = 1 + longitud xs

promedio :: [Int] -> Int              -- x:xs para no dividir por 0
promedio (x:xs) = sumatoria (x:xs) `div` longitud (x:xs) -- div sumatoria xs longitud xs

-- Ejercicio 5

-- a) Variable libre: n :: Int
f5a :: Int -> Int
f5a 0 = 1
f5a x = x * f5a (x-1)

-- b) Variable libre: xs :: [Int]
f5b :: Fractional a => [Int] -> a
f5b (x:xs) = fromIntegral (sumatoria xs) / fromIntegral (longitud xs)

-- b) Variables libres: xs :: [Int], ys :: [Int]
-- funciones auxiliares
maximo :: [Int] -> Int
maximo [x] = x
maximo (x:xs) = max x (maximo xs)

minimo :: [Int] -> Int
minimo [x] = x
minimo (x:xs) = min x (minimo xs)

f5c :: [Int] -> [Int] -> Bool
f5c xs ys = maximo xs < minimo ys
