/-!
# Lean 代码示例

这个文件展示了如何编写 Lean 代码
-/

namespace MyLeanCode

-- 1. 定义自然数（如果需要自定义）
inductive MyNat where
| zero : MyNat
| succ : MyNat → MyNat

open MyNat

-- 2. 定义一些值
def myZero : MyNat := zero
def myOne : MyNat := succ zero
def myTwo : MyNat := succ myOne
def myThree : MyNat := succ myTwo

-- 3. 定义定理
theorem one_plus_one : 1 + 1 = 2 := by rfl

-- 4. 定义函数
def double (n : Nat) : Nat := n + n

-- 5. 证明定理
theorem double_two : double 2 = 4 := by rfl

-- 6. 使用标准自然数
def myNumber : Nat := 42

theorem myNumber_is_nat : myNumber = 42 := by rfl

-- 7. 验证类型
#check (myThree : MyNat)
#check (myNumber : Nat)
#check (double 5 : Nat)

end MyLeanCode