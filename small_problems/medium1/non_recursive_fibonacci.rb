def fibo(n)
   first = 1 
   second = 1
   
   if n == 1 || n == 2
       num = 1 
   else
       amount = n - 2
       
     amount.times do 
      num = first + second
      first = second
      second = num
     end
 end
   
  num
end

p fibo(6)
p fibo(100) #== 354224848179261915075 #=> true

def fibo_last_digit(n)
    num = fibo(n)
    last_num = num.to_s[-1].to_i
end