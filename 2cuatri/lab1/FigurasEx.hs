module FigurasEx where

import Figura

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
