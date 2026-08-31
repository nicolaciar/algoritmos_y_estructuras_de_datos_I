module Figura where

-- Ejercicio 4, 5 y 6 -  Laboratorio 0

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


--- Ejercicio 5

--a)
todasRojas :: [Figura] -> Bool
todasRojas [] = True
todasRojas (x:xs) = rojo x && todasRojas xs

--b) existeRombo
existeRombo :: [Figura] -> Bool
existeRombo [] = False
existeRombo (x:xs) = rombo x || existeRombo xs


--- Ejercicio 6

--a) Todas las figuras de xs son amarillas
todasAmarillas :: [Figura] -> Bool
todasAmarillas [] = True
todasAmarillas (x:xs) = amarillo x && todasAmarillas xs

--b) Ninguna figura de xs tiene tamaño menor a 7
ningunaMenor7 :: [Figura] -> Bool
ningunaMenor7 [] = True
ningunaMenor7 (x:xs) = not (tam x < 7) && ningunaMenor7 xs

--c) Todas las figuras de xs son de tamaño menor a 5
todasMenor5 :: [Figura] -> Bool
todasMenor5 [] = True
todasMenor5 (x:xs) = (tam x < 5) && todasMenor5 xs

--d) Todos los triangulos de xs son rojos
triangulosRojos :: [Figura] -> Bool
triangulosRojos [] = True
triangulosRojos (x:xs) | triangulo x = (rojo x) && triangulosRojos xs
                       | otherwise = triangulosRojos xs

-- e) Existe un cuadrado verde en xs
existeCuadVerde :: [Figura] -> Bool
existeCuadVerde [] = False
existeCuadVerde (x:xs) = (cuadrado x && verde x) || existeCuadVerde xs

-- f) Todos los círculos de xs son azules y de tamaño menor a 10
todosCircAzulMenor10 :: [Figura] -> Bool
todosCircAzulMenor10 [] = True
todosCircAzulMenor10 (x:xs) | circulo x = (azul x) && (tam x < 10) && todosCircAzulMenor10 xs
                            | otherwise = todosCircAzulMenor10 xs

-- g) Ningún triángulo de xs es azul
ningunTrianguloAzul :: [Figura] -> Bool
ningunTrianguloAzul [] = True
ningunTrianguloAzul (x:xs) | triangulo x = not (azul x) && ningunTrianguloAzul xs
                           | otherwise = ningunTrianguloAzul xs

-- h) En xs no hay círculos amarillos ni verdes
noCircAmarilloVerdes :: [Figura] -> Bool
noCircAmarilloVerdes [] = True
noCircAmarilloVerdes (x:xs) | circulo x = not (amarillo x || verde x) && noCircAmarilloVerdes xs
                            | otherwise = noCircAmarilloVerdes xs
