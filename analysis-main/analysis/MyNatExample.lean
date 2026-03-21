namespace MyNat  -- 避免与标准库的 Nat 冲突

inductive Nat : Type where
  | zero : Nat       -- 0 是自然数
  | succ : Nat → Nat -- 若n是自然数，则succ n 也是自然数

-- 定义常用自然数的别名
def zero := Nat.zero
def one := Nat.succ zero
def two := Nat.succ one
def three := Nat.succ two

-- 检查0的后继是1
#check Nat.succ zero = one

-- 检查1的后继是2
#check Nat.succ one = two

-- 证明1的后继是2
example : Nat.succ one = two := by rfl

-- 证明2的后继是3
example : Nat.succ two = three := by rfl

-- 证明3是自然数
example : Nat := three

end MyNat