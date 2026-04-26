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

-- Dentro de una misma octava, las notas están ordenadas de menor (grave) a mayor (aguda)
-- en el orden que fueron definidas en NotaBasica, por lo tanto funciona:
-- minimoElemento [Fa, La, Sol, Re, Fa] -> Re

-- Ejercicio 4

-- 4a
type Altura = Int
type NumCamiseta = Int

data Zona = Arco | Defensa | Mediocampo | Delantera deriving Eq
data TipoReves = DosManos | UnaMano
data Modalidad = Carretera | Pista | Monte | BMX
data PiernaHabil = Izquierda | Derecha

type ManoHabil = PiernaHabil

data Deportista = Ajedrecista 
                | Ciclista Modalidad
                | Velocista Altura
                | Tenista TipoReves ManoHabil Altura
                | Futbolista Zona NumCamiseta PiernaHabil Altura

-- 4b
-- Ciclista :: Modalidad -> Deportista

-- 4c
contar_velocistas :: [Deportista] -> Int
contar_velocistas [] = 0
contar_velocistas ((Velocista _) : xs) = 1 + contar_velocistas xs
contar_velocistas (_:xs) = contar_velocistas xs
-- version con case of
contar_velocistas' :: [Deportista] -> Int
contar_velocistas' [] = 0
contar_velocistas' (x:xs) = case x of 
        Velocista _ -> 1 + contar_velocistas' xs
        _           -> contar_velocistas' xs

-- 4d
-- Version sin filter
contar_futbolistas :: [Deportista] -> Zona -> Int
contar_futbolistas [] _ = 0
contar_futbolistas (Futbolista Arco _ _ _: xs) Arco = 1 + contar_futbolistas xs Arco
contar_futbolistas (Futbolista Defensa _ _ _: xs) Defensa = 1 + contar_futbolistas xs Defensa
contar_futbolistas (Futbolista Mediocampo _ _ _: xs) Mediocampo = 1 + contar_futbolistas xs Mediocampo
contar_futbolistas (Futbolista Delantera _ _ _ : xs) Delantera = 1 + contar_futbolistas xs Delantera
contar_futbolistas (_:xs) z = contar_futbolistas xs z
-- Version con filter :: (a -> Bool) -> [a] -> [a]:
-- Funcion aux
esFutbolistaDeZona :: Zona -> Deportista -> Bool 
esFutbolistaDeZona c (Futbolista z _ _ _) | z==c = True   -- agregar Eq a Zona
esFutbolistaDeZona _ _ = False

contar_futbolistas' :: [Deportista] -> Zona -> Int
contar_futbolistas' [] _ = 0
contar_futbolistas' (x:xs) z = length (filter (esFutbolistaDeZona z) xs)

-- Lista para probar las funciones:

altura1, altura2 :: Altura
altura1 = 180
altura2 = 175
deportista1 = Velocista altura1
deportista2 = Futbolista Arco 1 Derecha altura2
deportista3 = Ciclista Pista
deportista4 = Futbolista Defensa 4 Izquierda 188
deportista5 = Velocista 192
deportista6 = Futbolista Arco 23 Izquierda altura1
listaDeportistas :: [Deportista]
listaDeportistas = [deportista1, deportista2, deportista3, deportista4, deportista5, deportista6]


-- Ejercicio 5


