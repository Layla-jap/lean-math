/-!
# 证明 3 是一个自然数

使用项目中定义的 Chapter2.Nat 来证明 3 是一个自然数。
-/

namespace Chapter2

-- 自然数的定义（从项目中）
inductive Nat where
| zero : Nat
| succ : Nat → Nat

open Nat

-- 定义 3 为三个后继运算应用于 0
def three : Nat :=
  succ (succ (succ zero))

-- 证明 3 是一个自然数：直接展示其构造
-- 在 Lean 中，只要能构造出 Nat 类型的值，就证明了它是自然数
#check (three : Nat)

-- 详细的构造过程
def one : Nat := succ zero
#check (one : Nat)

def two : Nat := succ one
#check (two : Nat)

def three_alt : Nat := succ two
#check (three_alt : Nat)

-- 验证 3 和 three_alt 是相等的
theorem three_equals_three_alt : three = three_alt :=
  by rfl

-- 测试：验证所有构造的数都是自然数
#check (zero : Nat)
#check (one : Nat)
#check (two : Nat)
#check (three : Nat)

end Chapter2
