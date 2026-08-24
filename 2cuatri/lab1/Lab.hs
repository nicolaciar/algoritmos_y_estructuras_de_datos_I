data Color = Rojo | Amarillo | Azul | Verde deriving (Show, Eq)

data Forma = Triangulo | Cuadrado | Rombo | Circulo deriving (Show, Eq)

type Figura = (Forma, Color, Int)

-- Predicados del color

rojo :: Figura -> Bool
rojo (f,c,t) = c == Rojo

amarillo :: Figura -> Bool
amarillo (_,c,_) = c == Amarillo

azul :: Figura -> Bool
azul (_,c,_) = c == Azul

verde :: Figura -> Bool
verde (_,c,_) = c == Verde

-- Predicados de forma

triangulo :: Figura -> Bool
triangulo (f,_,_) = f == Triangulo

cuadrado :: Figura -> Bool
cuadrado (f,_,_) = f == Cuadrado

rombo :: Figura -> Bool
rombo (f,_,_) = f == Rombo

circulo :: Figura -> Bool
circulo (f,_,_) = f == Circulo

-- Función tamaño
tam :: Figura -> Int
tam (_,_,t) = t

-- Todas las figuras son rojas
xs1 :: [Figura]
xs1 = [(Circulo, Rojo, 4), (Cuadrado, Rojo, 10), (Triangulo, Rojo, 7)]

-- Mezcla de colores, sin ningún patrón especial
xs2 :: [Figura]
xs2 = [(Circulo, Azul, 40), (Rombo, Rojo, 10), (Triangulo, Verde, 3)]

-- Tiene un cuadrado verde (para probar "existe un cuadrado verde")
xs3 :: [Figura]
xs3 = [(Triangulo, Rojo, 8), (Cuadrado, Verde, 6), (Circulo, Amarillo, 12)]

-- Ningún triángulo es azul, pero sí hay otras figuras azules
xs4 :: [Figura]
xs4 = [(Triangulo, Rojo, 5), (Triangulo, Amarillo, 9), (Circulo, Azul, 3)]

-- Hay círculos amarillos y verdes (para violar "no hay círculos amarillos ni verdes")
xs5 :: [Figura]
xs5 = [(Circulo, Amarillo, 4), (Circulo, Verde, 6), (Rombo, Rojo, 11)]

-- Todos los círculos son azules y de tamaño menor a 10
xs6 :: [Figura]
xs6 = [(Circulo, Azul, 5), (Circulo, Azul, 9), (Cuadrado, Rojo, 20)]

-- Hay círculos rojos y también cuadrados rojos (para probar la implicación del ítem j)
xs7 :: [Figura]
xs7 = [(Circulo, Rojo, 6), (Cuadrado, Rojo, 8), (Triangulo, Verde, 2)]

-- Hay círculos rojos PERO NO hay cuadrados rojos (para que la implicación falle)
xs8 :: [Figura]
xs8 = [(Circulo, Rojo, 6), (Cuadrado, Azul, 8), (Triangulo, Verde, 2)]

-- Lista vacía (caso borde, siempre útil probar)
xs9 :: [Figura]
xs9 = []

-- Todas las figuras chicas (tamaño menor a 5)
xs10 :: [Figura]
xs10 = [(Triangulo, Rojo, 2), (Circulo, Verde, 4), (Rombo, Azul, 1)]

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

longitud :: [a] -> Int
longitud [] = 0
longitud (x:xs) = 1 + longitud xs

promedio :: [Int] -> Int
promedio xs = sumatoria xs `div` (longitud xs) -- div sumatoria xs longitud xs

-- Ejercicio 5

-- a) Variable libre: n :: Int
