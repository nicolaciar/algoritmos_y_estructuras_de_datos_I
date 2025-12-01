
---


## 1. Herramientas útiles en GHCi

### **`:t expr`**

Muestra el tipo de una expresión o función.

```haskell
:t map        -- map :: (a -> b) -> [a] -> [b]
:t (++)       -- (++) :: [a] -> [a] -> [a]
```

### **`:i nombre`**

Muestra información esencial: tipo, clase, constructores, precedencia, asociatividad.

```haskell
:i (++)
-- infixr 5 ++
```

### **`:reload` (`:r`)**

Vuelve a cargar el archivo después de modificarlo.

### **`:load Archivo.hs` (`:l`)**

Carga tu programa.

### **`:quit` (`:q`)**

Sale de GHCi.

> NOTA: **GHCi NO incluye documentación del Prelude**, solo tipos y metadata.

---

## 2. Operadores infijos: qué significan `infix`, `infixl`, `infixr`

Cuando GHCi muestra:

```
infixr 5 ++
```

significa:

### **Asociatividad**

- `infixl` → asociativo **a izquierda**  
    `(a - b - c) = ((a - b) - c)`
    
- `infixr` → asociativo **a derecha**  
    `(a ++ b ++ c) = (a ++ (b ++ c))`
    
- `infix` → **sin asociatividad**, requiere paréntesis
    

### **Precedencia (0 a 9)**

- Número más alto → se evalúa primero.
    
- Ej.: `!!` tiene precedencia 9 → se evalúa antes que `++` (5).
    

### Ejemplo:

```
infixr 5 :
infixr 5 ++
```

Ambos tienen misma precedencia → mezclar requiere paréntesis:

```haskell
1 : [2] ++ [3]       -- ERROR
1 : ([2] ++ [3])     -- OK
```

---

## 3. Patrones esenciales para recursión en listas

Siempre la misma estructura:

```haskell
f [] = ...
f (x:xs) = ... x ... (f xs)
```

Ejemplos típicos (útiles en examen):

```haskell
todosPositivos [] = True
todosPositivos (x:xs) = x > 0 && todosPositivos xs
```

```haskell
hayPares [] = False
hayPares (x:xs) = (x `mod` 2 == 0) || hayPares xs
```

```haskell
paratodo [] = True
paratodo (b:bs) = b && paratodo bs
```

```haskell
existe [] = False
existe (b:bs) = b || existe bs
```

---

## 4. Cosas que conviene saber de memoria

### **Funciones del Prelude más usadas**

- `head, tail, last, init`
    
- `null`
    
- `length`
    
- `elem`
    
- `map`
    
- `filter`
    
- `foldr`, `foldl`
    
- `take`, `drop`
    
- `(++)`, `(:)`
    

### **Funciones para enteros**

- `div`, `mod`, `even`, `odd`
    

### **Tuplas**

- `fst`, `snd`
    

### **Booleanos**

- `not`, `(&&)`, `(||)`
    

No te van a pedir cosas fuera del Prelude.

---

## 5. Consejos prácticos para examen

- Usá **`:t`** y **`:i`** para recordar tipos y precedencias.
    
- Probá pequeños ejemplos para entender comportamientos.
    
- Recordá que las funciones con cuantificadores universales (`∀`) → caso base `True`.
    
- Las existenciales (`∃`) → caso base `False`.
    
- El patrón `(x:xs)` es clave: operar con `x` y recursar sobre `xs`.
    
- Mezclar operadores puede requerir paréntesis según su precedencia.
    

---
