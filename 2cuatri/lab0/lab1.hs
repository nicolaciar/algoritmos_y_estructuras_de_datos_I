-- Ejercicio 1 Lab 0

-- a)
esCero :: Int -> Bool
esCero x = (x==0)

-- b)
esPositivo :: Int -> Bool
esPositivo x = (x>0)

-- c)
esVocal :: Char -> Bool
esVocal l | l == 'a' = True
          | l == 'e' = True
          | l == 'i' = True
          | l == 'o' = True
          | l == 'u' = True
          | otherwise = False
          
-- d)
valorAbsoluto :: Int -> Int
valorAbsoluto x | x < 0 = -x
                | x>=0 = x
