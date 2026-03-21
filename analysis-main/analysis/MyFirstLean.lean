/-!
# 我的第一个 Lean 程序

这是一个简单的 Lean 程序，演示基本的数学证明。
-/

namespace MyFirstLean

-- 定义一个简单的定理：对于任何自然数 n，n + 0 = n
theorem add_zero (n : Nat) : n + 0 = n := by
  induction n with
  | zero => rfl
  | succ n ih =>
    show Nat.succ n + 0 = Nat.succ n
    rw [Nat.succ_add, ih]

-- 定义另一个定理：对于任何自然数 n，0 + n = n
theorem zero_add (n : Nat) : 0 + n = n := by
  induction n with
  | zero => rfl
  | succ n ih =>
    show 0 + Nat.succ n = Nat.succ n
    rw [Nat.add_succ, ih]

-- 定义一个简单的定理：1 + 1 = 2
theorem one_plus_one : 1 + 1 = 2 := by
  rfl

-- 定义一个定理：加法交换律
theorem add_comm (a b : Nat) : a + b = b + a := by
  induction a with
  | zero =>
    show 0 + b = b + 0
    rw [zero_add, add_zero]
  | succ a ih =>
    show Nat.succ a + b = b + Nat.succ a
    rw [Nat.succ_add, Nat.add_succ, ih]

end MyFirstLean
