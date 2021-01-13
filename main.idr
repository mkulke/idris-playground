module Main

simple : String
simple = "hello"

add : Nat -> Nat -> Nat
add (S k) y = S (add k y)
add Z     y = y

getType : Bool -> Type
getType True  = Integer
getType False = String

bla : (x : Bool) -> getType x
bla True  = 0
bla False = "false"

main : IO ()
main = do
  putStrLn ("one: "   ++ simple)
  putStrLn ("two: "   ++ x)
  putStrLn ("three: " ++ y)
    where
      x : String
      x = cast $ cast { to = Int } (add 1 5)

      y : String
      y = bla False
