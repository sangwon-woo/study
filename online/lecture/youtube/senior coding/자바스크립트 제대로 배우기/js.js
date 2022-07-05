function fx(x, f) {
  const y = x * 10;
  f(y);
}

a = fx(2, (z => {
  return z ** 2;
}))()

console.log(a)

