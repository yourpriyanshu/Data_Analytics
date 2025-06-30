def febonacii(num):
  if num <= 1: return num
  return febonacii(num-1)+febonacii(num-2)
print(febonacii(8))