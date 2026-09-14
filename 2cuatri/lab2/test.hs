-- Submódulo: calcula x^n (derivado en el ejercicio 2c)
exp' :: (Num a, Integral b) => a -> b -> a
exp' _ 0 = 1
exp' x n = x * exp' x (n - 1)

-- Función principal: suma de potencias sum_{i=0}^{n-1} x^i (ejercicio 4a)
f :: (Num a, Integral b) => a -> b -> a
f _ 0 = 0
f x n = f x (n - 1) + exp' x (n - 1)