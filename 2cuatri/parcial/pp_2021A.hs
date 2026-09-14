-- Primer Parcial 2021 Tema A

-- Ejercicio 1
data EmpresaTelefono = Claro | Personal | Movistar | Tuenti

type Frase = String

fraseEmpresa :: EmpresaTelefono -> Frase
fraseEmpresa Claro = "Claro, la red más poderosa"
fraseEmpresa Personal = "Personal, es como vos"
fraseEmpresa Movistar = "Compartida la vida es mas..."
fraseEmpresa Tuenti = "Tuenti es la mas económica"

{- 
Ejemplo de funcionamiento:

ghci> fraseEmpresa Movistar
"Compartida la vida es mas..."
ghci> fraseEmpresa Personal
"Personal, es como vos"
-}

-- Ejercicio 2

type NombrePersona = String

data MisEmpresas = Ninguna | AgregaEmpresa EmpresaTelefono NombrePersona MisEmpresas

tengoEmpresa :: MisEmpresas -> EmpresaTelefono -> NombrePersona -> Bool
tengoEmpresa Ninguna _ _  = False
-- tengoEmpresa (AgregaEmpresa e n xs) em no = (n == no && e == em) || tengoEmpresa xs em no (version si Eq)
tengoEmpresa (AgregaEmpresa Movistar n xs) Movistar no = (n == no) || tengoEmpresa xs Movistar no
tengoEmpresa (AgregaEmpresa Claro n xs) Claro no = (n == no) || tengoEmpresa xs Claro no
tengoEmpresa (AgregaEmpresa Personal n xs) Personal no = (n == no) || tengoEmpresa xs Personal no
tengoEmpresa (AgregaEmpresa Tuenti n xs) Tuenti no = (n == no) || tengoEmpresa xs Tuenti no
-- Si no hay coincidencia:
tengoEmpresa (AgregaEmpresa _ _ xs ) em no = tengoEmpresa xs em no
