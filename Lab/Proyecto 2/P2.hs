{-# LANGUAGE NPlusKPatterns #-}

-- Ejercicio 1

data Carrera = Matematica | Fisica | Computacion | Astronomia

titulo :: Carrera -> String
titulo Matematica = "Licenciatura en Matematica"
titulo Fisica = "Licenciatura en Fisica"
titulo Computacion = "Licenciatura en Ciencias de la Computación"
titulo Astronomia = "Licenciatura en Astronomia"

data NotaBasica = Do | Re | Mi | Fa | Sol | La | Si deriving (Eq, Ord, Show)

cifradoAmericano :: NotaBasica -> Char
cifradoAmericano Do  = 'C'
cifradoAmericano Re  = 'D'
cifradoAmericano Mi  = 'E'
cifradoAmericano Fa  = 'F'
cifradoAmericano Sol = 'G'
cifradoAmericano La  = 'A'
cifradoAmericano Si  = 'B'


-- Ejercicio 2
-- (Agregar "deriving (Eq, Ord)" a la definicion de NotaBasica)


-- Ejercicio 3

minimoElemento :: Ord a => [a] -> a
minimoElemento [a] = a
minimoElemento (x:xs) = x `min` minimoElemento xs

minimoElemento' :: (Bounded a, Ord a) => [a] -> a
minimoElemento' [] = maxBound
minimoElemento' (x:xs) = x `min` minimoElemento' xs



-- Ejercicio 4

type Altura = Int
type NumCamiseta = Int

data Zona = Arco | Defensa | Mediocampo | Delantera
data TipoReves = DosManos | UnaMano
data Modalidad = Carretera | Pista | Monte | BMX
data PiernaHabil = Izquierda | Derecha

type ManoHabil = PiernaHabil

data Deportista = Ajedrecista 
                | Ciclista Modalidad
                | Velocista Altura
                | Tenista TipoReves ManoHabil Altura
                | Futbolista Zona NumCamiseta PiernaHabil Altura

contar_velocistas :: [Deportista] -> Int
contar_velocistas [s] = length [s] where s = Velocista

contar_futbolistas :: [Deportista] -> Zona -> Int
contar_futbolistas
