type Nat_ = (Z) | (S nat)

U60ToNat n = switch n {
  0: Nat_/Z
  _: (Nat_/S (U60ToNat n-1))
}

def factor(x):
  bend n=2:
    when x % n != 0:
      return fork(n+1)
    else:
      return n

def main(n):
  return factor(n)
