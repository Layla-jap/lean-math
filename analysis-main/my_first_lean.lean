import Mathlib.Tactic

/-!
# 我的第一个 Lean 程序

这是一个简单的 Lean 程序，演示基本的数学证明。
-/

namespace MyFirstLean

-- 定义一个简单的定理：对于任何自然数 n，n + 0 = n
theorem add_zero (n : Nat) : n + 0 = n := by
  rw [Nat.add_zero]

-- 定义另一个定理：对于任何自然数 n，0 + n = n  
theorem zero_add (n : Nat) : 0 + n = n := by
  rw [Nat.zero_add]

-- 定义一个更复杂的定理：加法结合律
theorem add_assoc (a b c : Nat) : (a + b) + c = a + (b + c) := by
  induction a
  case zero => simp
  case succ a ih => 
    simp [Nat.add_succ, ih]

end MyFirstLean