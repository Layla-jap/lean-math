namespace MyNat

inductive Nat : Type where
  | zero : Nat
  | succ : Nat -> Nat

def zero := Nat.zero
def one := Nat.succ zero
def two := Nat.succ one
def three := Nat.succ two

#check Nat.succ zero = one
#check Nat.succ one = two

example : Nat.succ one = two := rfl
example : Nat.succ two = three := rfl
example : Nat := three

end MyNat
