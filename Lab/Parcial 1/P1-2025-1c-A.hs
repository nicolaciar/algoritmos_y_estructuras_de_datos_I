-- Ejercicio 1

-- 1 a)
data TipoYerba = ConPalo | SinPalo | Compuesta
    deriving Show

type Cantidad = Int

data Origen = Organica | Agroecologica
    deriving Show

data Paquete = PaqueteNormal TipoYerba Cantidad
             | PaquetePremium TipoYerba Cantidad Origen
    deriving Show

--- Ejemplos
p1 = PaqueteNormal ConPalo 500
p2 = PaquetePremium ConPalo  1000 Organica
p3 = PaqueteNormal SinPalo 500
p4 = PaquetePremium Compuesta 1000 Agroecologica

listaPaquete :: [Paquete]
listaPaquete = [p1, p2]


-- 1 b)

es_yerba_con_palo :: Paquete -> Bool
es_yerba_con_palo (PaqueteNormal ConPalo _) = True
es_yerba_con_palo (PaquetePremium ConPalo _ _) = True
es_yerba_con_palo _ = False
-- es_yerba_con_palo p1 -> True
-- es_yerba_con_palo p4 -> False

agregar_paquete :: Paquete -> [Paquete] -> [Paquete]
agregar_paquete p ps = p:ps
-- agregar_paquete p3 listaPaquete
-- agregar_paquete p4 [p1,p3]

-- fun auxiliar
kilosDeTipo :: Paquete -> TipoYerba -> Int
kilosDeTipo (PaqueteNormal ConPalo cantidad) ConPalo = cantidad
kilosDeTipo (PaqueteNormal SinPalo cantidad) SinPalo = cantidad
kilosDeTipo (PaqueteNormal Compuesta cantidad) Compuesta = cantidad
kilosDeTipo (PaquetePremium ConPalo cantidad _) ConPalo = cantidad
kilosDeTipo (PaquetePremium SinPalo cantidad _) SinPalo = cantidad
kilosDeTipo (PaquetePremium Compuesta cantidad _) Compuesta = cantidad
kilosDeTipo _ _ = 0

cuantos_kilos :: [Paquete] -> TipoYerba -> Int
cuantos_kilos [] _ = 0
cuantos_kilos (p:ps) tipo = kilosDeTipo p tipo + cuantos_kilos ps tipo


-- Ejercicio 2

-- 2a
data StockPaquetes = NoHayPaquetes | Agregar Paquete StockPaquetes

-- 2b
hay_organica_de_5kg :: StockPaquetes -> Bool
hay_organica_de_5kg NoHayPaquetes = False
hay_organica_de_5kg (Agregar (PaquetePremium _ c Organica) sp) = (c==5000) || hay_organica_de_5kg sp
hay_organica_de_5kg (Agregar _ sp) = hay_organica_de_5kg sp

--listas para prueba
stock1 :: StockPaquetes
stock1 =
  Agregar (PaqueteNormal ConPalo 1000)
    (Agregar (PaquetePremium SinPalo 5000 Organica)
      NoHayPaquetes)

stock2 :: StockPaquetes
stock2 =
  Agregar (PaqueteNormal ConPalo 1)
    (Agregar (PaqueteNormal SinPalo 3)
      (Agregar (PaquetePremium ConPalo 2 Agroecologica)
        (Agregar (PaquetePremium Compuesta 4 Organica)
          NoHayPaquetes)))

stockVacio :: StockPaquetes
stockVacio = NoHayPaquetes


-- Ejercicio 3

--vender_cantidad :: [Paquete] -> TipoYerba -> Int -> Maybe [Paquete]
--vender_cantidad ps tipoB cant =
