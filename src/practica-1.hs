-- Ejercicio 7

listasQueSuman :: Int -> [[Int]]
listasQueSuman n = [xs | l <- [1..n], xs <- listasLongFijaQueSuman l n]

listasLongFijaQueSuman :: Int -> Int -> [[Int]]
listasLongFijaQueSuman 1 n = [[n]]
listasLongFijaQueSuman l n = [m:xs | m  <- [1..n - 1],
                                     xs <- listasLongFijaQueSuman (l - 1) (n - m)]

