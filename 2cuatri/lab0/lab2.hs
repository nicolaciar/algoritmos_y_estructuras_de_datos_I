-- Ejericio 2 Laboratorio 0

-- a)
todosPositivos :: [Int] -> Bool
todosPositivos [] = True
todosPositivos (x:xs) = (x>0) && todosPositivos xs

-- b)
hayPares :: [Int] -> Bool
hayPares [] = False
hayPares (x:xs) = (x `mod` 2 == 0) || hayPares xs

-- c)
paratodo :: [Bool] -> Bool
paratodo [] = True
paratodo (x:xs) = x && paratodo xs

-- d)

existe :: [Bool] -> Bool
existe [] = False
existe (x:xs) = x || existe xs
