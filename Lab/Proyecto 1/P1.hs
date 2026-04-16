
-- Ejercicio 1

esCero :: Int -> Bool
esCero x = (x == 0)

esPositivo :: Int -> Bool
esPositivo x = (x > 0)

esVocal :: Char -> Bool
esVocal l | l == 'a' = True
          | l == 'e' = True
          | l == 'i' = True
          | l == 'o' = True
          | l == 'u' = True
          | otherwise = False

valorAbsoluto :: Int -> Int
valorAbsoluto x | (x>0 || x==0) = x
                | x<0 = -x

-- Ejercicio 2

paratodo :: [Bool] -> Bool
paratodo [] = True
paratodo (x:xs) = (x == True) && paratodo xs

sumatoria :: [Int] -> Int
sumatoria [] = 0
sumatoria (x:xs) = x + sumatoria xs

productoria :: [Int] -> Int
productoria [] = 1
productoria (x:xs) = x * productoria xs

factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial (x-1)

promedio :: [Int] -> Int
promedio xs = sumatoria xs `div` (length xs)


-- Ejercicio 3

pertenece :: Int -> [Int] -> Bool
pertenece n [] = False
pertenece n (x:xs) = (n == x) || pertenece n xs


-- Ejercicio 4 

paratodo' :: [a] -> (a -> Bool) -> Bool
paratodo' [] _ = True
paratodo' (x:xs) t = (t x) && paratodo' xs t

existe' :: [a] -> (a -> Bool) -> Bool
existe' [] _  = False
existe' (x:xs) t = (t x) || existe' xs t

sumatoria' :: [a] -> (a -> Int) -> Int
sumatoria' [] _ = 0
sumatoria' (x:xs) t = t x + sumatoria' xs t

productoria' :: [a] -> (a -> Int) -> Int
productoria' [] _ = 1
productoria' (x:xs) t = t x * productoria' xs t


-- Ejercicio 5

paratodo'' :: [Bool] -> Bool
paratodo'' xs =  paratodo' xs (id)


-- Ejercicio 6

-- Funciones auxiliares
esPar :: Int -> Bool
esPar x = (x `mod` 2 == 0)

esMultiplo :: Int -> Int -> Bool
esMultiplo n m = (m `mod` n == 0)

divideA :: Int -> Int -> Bool
divideA n m = (n `mod` m == 0);

cuadrado :: Int -> Int
cuadrado x = x*x

todosPares :: [Int] -> Bool
todosPares xs = paratodo' xs esPar

hayMultiplo :: Int -> [Int] -> Bool
hayMultiplo n xs = existe' xs (esMultiplo n)                -- Aplicación parcial!

sumaCuadrados :: Int -> Int
sumaCuadrados n = sumatoria' [1..n] cuadrado

existeDivisor :: Int -> [Int] -> Bool
existeDivisor n xs = existe' xs (divideA n)
