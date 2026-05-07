-- Ejercicio 1

-- Parte 1
data TipoGaseosa = Coca | Sprite | Pepsi deriving Show

data TipoSnack = Papitas | Chocolate | Alfajor deriving Show

data TipoMaquina = MaquinaGaseosa | MaquinaSnack deriving Show

type Peso = Int
type Precio = Int

data Producto = ProductoGaseosa TipoGaseosa Peso Precio | ProductoSnack TipoSnack Peso Precio deriving Show

data Maquina = Maquina TipoMaquina [Producto] deriving Show

-- Parte 2
es_maquina_vacia :: Maquina -> Bool
es_maquina_vacia Maquina _ [] = True
es_maquina_vacia Maquina _ _ = False
