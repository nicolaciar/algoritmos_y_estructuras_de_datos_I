{-# LANGUAGE NPlusKPatterns #-}

-- Ejercicio 1

-- a)
sumCuad :: Num a => [a] -> a
sumCuad [] = 0
sumCuad (x:xs) = x*x + sumCuad xs

-- b)
iga :: (Eq a) => a -> [a] -> Bool
iga e [] = True
iga e (x:xs) = x == e && iga e xs

-- c)
exp1 :: (Num a) => a -> Int -> a
exp1 _ 0 = 1
exp1 x n = x * exp1 x (n-1)

-- d)
-- funcion aux
par :: Int -> Bool
par x = (mod x 2 == 0)

sumPar :: Int -> Int
sumPar 0 = 0
sumPar n | par n = n + sumPar (n-1)
          | not (par n) = sumPar (n-1)
          
-- e)
-- p :: a -> Bool
cuantos :: (a -> Bool) -> [a] -> Int
cuantos p [] = 0
cuantos p (x:xs) | p x = 1 + cuantos p xs
                 | not (p x) = cuantos p xs

-- Ejercicio 2

-- a)
sumPot :: Num a => a -> Int -> a
sumPot x 0 = 0
sumPot x n = exp1 x n + sumPot x (n-1)

-- b) FALTA DERIVAR

-- c)
cubo :: Int -> Int
cubo 0 = 0
cubo (x+1) = cubo x + 3 * (exp1 x 2) + 3*x + 1

-- d) FALTA DERIVAR


-- Ejercicio 3
--a)
iguales :: Ord a => [a] -> Bool
iguales [] = True
iguales (x:[]) = True
iguales (x:y:xs) = (x==y) && iguales (y:xs)

--b)
minimo :: [Int] -> Int
minimo (x:[]) = x
minimo (x:y:xs) = min x (minimo (y:xs))

-- c)
creciente :: [Int] -> Bool
creciente [] = True
creciente (x:[]) = True
creciente (x:y:xs) = (x <= y) && (creciente (y:xs))

-- d)
prod :: Num a => [a] -> [a] -> a
prod _ [] = 0
prod [] _ = 0
prod (x:xs) (y:ys) = x*y + prod xs ys


-- Ejercicio 4

-- generalización de psum
gpsum :: (Num a, Ord a) => a -> [a] -> Bool
gpsum _ [] = True
gpsum n (x:xs) = n >= 0 && gpsum (n+x) xs 

psum :: (Num a, Ord a) => [a] -> Bool
psum xs = gpsum 0 xs

-- Correción Ejercicio 6 c) cuenta :: Cola -> Zona -> Deportista cuenta los deportistas de Zona que hay en la lista

-- Ejercicio 6
data Cola = VaciaC | Encolada Deportista Cola

-- a) 
atender :: Cola -> Cola
atender (Encolada d r) = r

-- b)
--encolar :: Deportista -> Cola -> Cola
--encolar d (VaciaC) = Encolada d VaciaC
--encolar (Encolada d c) = encolar d (atender c)











-- Definición y funciones de Deportista

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
    
    

-- Repaso parcial

-- Ejercicio 8 (tipico de parcial)

-- a)
type Nombre = String
type Artista = String
type Temas = [String]
type Anio = Int
type Duracion = Int

data Lanzamiento = Album Nombre Artista Temas Anio
                 | Sencillo Nombre Artista Duracion Anio

-- b)
clicsModernos :: Lanzamiento
clicsModernos = Album "Cics Modernos" "Charly Garcia" ["Nos siguen pegando abajo", "Dos cero uno", "Nuevos trapos", "Bancate ese defecto", "No me dejan salir", "Los dinosaurios", "Plateado sobre plateado"] 1983

africa :: Lanzamiento
africa = Sencillo "Africa" "Toto" 260 1982

-- c)
esDelArtista :: Lanzamiento -> String -> Bool
esDelArtista (Sencillo _ a' _ _) a = a' == a
esDelArtista _ a = False

-- d)
esEP :: Lanzamiento -> Bool
esEP (Album _ _ xs _) = longitud xs <= 4
esEP _ = False
-- donde:
longitud :: [a] -> Int
longitud [] = 0
longitud (x:xs) = 1 + longitud xs

-- e) 
minSencillosArtista :: [Lanzamiento] -> String -> Int
minSencillosArtista [] a = 0
minSencillosArtista (Sencillo _ a' d _:xs) a | a == a' = div d 60 + minSencillosArtista xs a
                                             | otherwise = minSencillosArtista xs a
minSencillosArtista (_:xs) a = minSencillosArtista xs a

-- f)
data ColaLanzamiento = Vacia | Encolada Lanzamiento ColaLanzamiento deriving Show

soloSencillos :: ColaLanzamiento -> ColaLanzamiento
soloSencillos Vacia = Vacia
soloSencillos (Encolada (Sencillo a b c d) resto) = Encolada (Sencillo a b c d) (soloSencillos resto)
soloSencillos (Encolada _ resto) = soloSencillos resto

