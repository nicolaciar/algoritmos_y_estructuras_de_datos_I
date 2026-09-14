-- Pimer parcial 2025 Tema A

-- Ejercicio 1

data TipoYerba = ConPalo | SinPalo | Compuesta deriving Show
data Origen = Organica | Agroecologica deriving Show
type Cantidad = Int
data Paquete = PaqueteNormal TipoYerba Cantidad | PaquetePremium TipoYerba Cantidad Origen deriving Show

-- Ejemplos:
p1 = PaqueteNormal ConPalo 1
p2 = PaquetePremium SinPalo 1 Organica
p3 = PaqueteNormal Compuesta 2
p4 = PaquetePremium ConPalo 3 Agroecologica
p5 = PaquetePremium ConPalo 5 Organica

es_yerba_con_palo :: Paquete -> Bool
es_yerba_con_palo (PaqueteNormal ConPalo _) = True
es_yerba_con_palo (PaquetePremium ConPalo _ _) = True
es_yerba_con_palo _ = False

agregar_paquete :: Paquete -> [Paquete] -> [Paquete]
agregar_paquete p xs = (p:xs)

cuantos_kilos :: [Paquete] -> TipoYerba -> Int
cuantos_kilos [] _ = 0
cuantos_kilos ((PaqueteNormal ConPalo c):xs) ConPalo = c + cuantos_kilos xs ConPalo
cuantos_kilos ((PaqueteNormal SinPalo c):xs) SinPalo = c + cuantos_kilos xs SinPalo
cuantos_kilos ((PaqueteNormal SinPalo c):xs) SinPalo = c + cuantos_kilos xs SinPalo
cuantos_kilos ((PaquetePremium ConPalo c _):xs) ConPalo = c + cuantos_kilos xs ConPalo
cuantos_kilos ((PaquetePremium SinPalo c _):xs) SinPalo = c + cuantos_kilos xs SinPalo
cuantos_kilos (_:xs) t = cuantos_kilos xs t


-- Ejercicio 2

data StockPaquetes = NoHayPaquetes | AgregarPaquete Paquete StockPaquetes

hay_organica_de_5kg :: StockPaquetes -> Bool
hay_organica_de_5kg NoHayPaquetes = False
hay_organica_de_5kg (AgregarPaquete (PaquetePremium _ 5 Organica) xs) = True
hay_organica_de_5kg (AgregarPaquete _ xs) = hay_organica_de_5kg xs
