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

-- c) Variables libres: xs :: [Int], ys :: [Int]
-- funciones auxiliares
maximo :: [Int] -> Int
maximo [x] = x
maximo (x:xs) = max x (maximo xs)

minimo :: [Int] -> Int
minimo [x] = x
minimo (x:xs) = min x (minimo xs)

f5c :: [Int] -> [Int] -> Bool
f5c xs ys = maximo xs < minimo ys

-- Ejercicio 6

-- b) n :: Int, xs :: [Int]
esMaxDe :: Int -> [Int] -> Bool
esMaxDe n xs = n == maximo xs
 
-- c) xs :: [Int]
prodPares :: [Int] -> Int
prodPares [] = 1
prodPares (x:xs) | (x `mod` 2 == 0) = x * prodPares xs
                 | otherwise = prodPares xs

-- d) xs :: [Int]
sumaPosPar :: [Int] -> Int
sumaPosPar xs = sumaPosParAux xs 0

sumaPosParAux :: [Int] -> Int -> Int
sumaPosParAux [] _ = 0
sumaPosParAux (x:xs) i | even i = x + sumaPosParAux xs (i+1)
                       | otherwise = sumaPosParAux xs (i+1)



-- Ejercicio 7

data Carrera  = Matematica | Fisica | Computacion | Astronomia

-- a)
titulo :: Carrera -> String
titulo Matematica = "Licenciatura en Matemática"
titulo Fisica = "Licenciatura en Física"
titulo Computacion = "Licenciatura en Computación"
titulo Astronomia = "Licenciatura en Astronomía"

-- b)
data NotaBasica = Do | Re | Mi | Fa | Sol | La | Si 
    deriving (Eq, Ord, Show) -- Ejercicio 8

-- d)

cifradoAmericano :: NotaBasica -> Char
cifradoAmericano Do = 'C'
cifradoAmericano Re = 'D'
cifradoAmericano Mi = 'E'
cifradoAmericano Fa = 'F'
cifradoAmericano Sol = 'G'
cifradoAmericano La = 'A'
cifradoAmericano Si = 'B'


-- Ejercicio 9

-- a)
minimoElemento :: Ord a => [a] -> a
minimoElemento [x] = x
minimoElemento (x:xs) = min x (minimoElemento xs)

-- b)
minimoElemento' :: (Ord a, Bounded a) => [a] -> a
minimoElemento' [] = maxBound
minimoElemento' (x:xs) = min x (minimoElemento' xs)

-- c)
xsn = [Fa, La, Sol, Re, Fa] -- minimoElemento xsn -> Re


-- Ejercicio 10

-- a)
-- Sinonimos de tipo
type Altura = Int
type NumCamiseta = Int

-- Tipos algebráicos sin parámetros (aka enumerados)
data Zona = Arco | Defensa | Mediocampo | Delantera
data TipoReves = DosManos | UnaMano
data Modalidad = Carretera | Pista | Monte | BMI
data PiernaHabil = Izquierda | Derecha
-- Sinonimo
type ManoHabil = PiernaHabil

data Deportista = Ajedrecista
                | Ciclista Modalidad
                | Velocista Altura
                | Tenista TipoReves ManoHabil Altura
                | Futbolista Zona NumCamiseta PiernaHabil Altura

-- b) Ciclista :: Deportista

-- c)
contarVelocistas :: [Deportista] -> Int
contarVelocistas [] = 0
contarVelocistas (Velocista _:xs) = 1 + contarVelocistas xs
contarVelocistas (_:xs) = contarVelocistas xs


-- d) 

contarFutbolistas :: [Deportista] -> Zona -> Int
contarFutbolistas xs zona = length (filter esDeZona xs)
  where
    esDeZona (Futbolista z _ _ _) = case (z, zona) of
      (Arco, Arco)             -> True
      (Defensa, Defensa)       -> True
      (Mediocampo, Mediocampo) -> True
      (Delantera, Delantera)   -> True
      _                        -> False
    esDeZona _ = False

