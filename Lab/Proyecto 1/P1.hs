
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



-- Funciones auxiliares para ej 6

esPar :: Int -> Bool
esPar x = (x `mod` 2 == 0)

esMultiplo :: Int -> Int -> Bool
esMultiplo n m = (m `mod` n == 0)

divideA :: Int -> Int -> Bool
divideA n m = (n `mod` m == 0);

cuadrado :: Int -> Int
cuadrado x = x*x

soloPrimos :: [Int] -> [Int]
soloPrimos [] = []
soloPrimos (x:xs) | esPrimo x = x:soloPrimos xs
                  | not (esPrimo x) = soloPrimos xs 


-- Ejercicio 6

todosPares :: [Int] -> Bool
todosPares xs = paratodo' xs esPar

hayMultiplo :: Int -> [Int] -> Bool
hayMultiplo n xs = existe' xs (esMultiplo n)                -- Aplicación parcial!

sumaCuadrados :: Int -> Int
sumaCuadrados n = sumatoria' [1..n] cuadrado

existeDivisor :: Int -> [Int] -> Bool
existeDivisor n xs = existe' xs (divideA n)

esPrimo :: Int -> Bool
esPrimo n = not (existeDivisor n [2..n-1])

factorial' :: Int -> Int
factorial' n = productoria' [1..n] id

multiplicaPrimos :: [Int] -> Int
multiplicaPrimos xs = productoria' (soloPrimos xs) id


-- Ejercicio 7

-- map representa la aplicación de una transformación uniforme sobre una estructura
map' :: (a -> b) -> [a] -> [b]
map' _ []     = []
map' f (x:xs) = f x : map' f xs

--filter decide que elementos permanecen en la estructura basándose en un predicado
filter' :: (a -> Bool) -> [a] -> [a]
filter' _ []     = []
filter' p (x:xs) | p x       = x : filter' p xs
                 | otherwise = filter' p xs

-- map succ [1, -4, 6, 2, -8] = [2, -3, 7, 3, -7] (aplica succ n = n+1 a cada elemento de la lista)

-- filter esPositivo [1, -4, 6, 2, -8] = [1, 6, 2] (aplica esPositivo Int -> Bool a cada elemento, descarta los que devuelven False)


-- Ejercicio 8

duplicaLista :: [Int] -> [Int]
duplicaLista [] = []
duplicaLista (x:xs) = (2*x):(duplicaLista xs)

duplicaLista' :: [Int] -> [Int]
duplicaLista' xs = map (*2) xs


-- Ejercicio 9

--- es la funcion auxiliar soloPrimos del el ejercicio 6

soloPrimos' :: [Int] -> [Int]
soloPrimos' [] = []
soloPrimos' (x:xs) = filter (esPrimo) xs

-- Ejercicio 10

primIgualesA :: Int -> [Int] -> [Int]
primIgualesA n [] = []
primIgualesA n (x:xs) =  
