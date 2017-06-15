#Write a recursive method that computes the nth Fibonacci number, 
#where nth is an argument to the method.

#1, 1, 2, 3, 5, 8, 13

# Compute fibo: 
# Input is n
# return 1 if n is equal to 1
# fibo(n) is equal to fibo(n-1) + fibo(n-2)

def fibo(n)
   if n <= 2
       fibo_num = 1
   else
       fibo_num = fibo(n-1) + fibo(n-2)
   end
   fibo_num
end

p fibo(6)