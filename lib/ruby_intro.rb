# gem install bundler# When done, submit this entire file to the autograder.
# Tianle Shu G00341565

# Part 1

def sum arr
  arr.reduce 0, :+  # reduce method is clearlier than inject. from 0 add to +:
end

def max_2_sum arr
  i= 0
  sum = 0
  if arr.length == 0
      sum = 0
  elsif arr.length == 1
      sum = arr[0]
  elsif arr.length == 2
      sum = arr[0]+arr[1]
  else
      sum = arr.sort.last(2).sum # This function sorts the array, gets a handle on the last 2 values and sums them.
  end 
  return sum
end

def sum_to_n? arr, n
  len=arr.length
  if(len==0&&n==0)
    then return false 
  end
  i=0
  while i<len
    j=i+1
    while j<len
      if(arr[i]+arr[j]==n)  
        then return true 
      end
      j=j+1
    end
    i=i+1
  end 
  return false
end

# Part 2

def hello(name)
  return "Hello, " +name
end

def starts_with_consonant? s
  reg_1=/[a-z]/ 
  reg_2=/[^aeiou]/
  if s.empty? 
    then return false 
  end
  if(reg_1===s[0].downcase && reg_2===s[0].downcase) #判断首位是否为不为元音的英语字母
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
 if  s=~/^[01]0*1*/ 
   then
    s="0b"+s                         #二进制字符串加上0b  binary string add 0b
    s=Integer(s)                     #字符串转为整数  convert the string to integer
    if s%4==0 
      then return true              #是4的倍数返回true   return true if the string represents a binary number that is a multiple of 4
    end
          
  end
  
  return false
end

# Part 3

class BookInStock
  def initialize(isbn,price)
        raise ArgumentError if isbn.empty? || price <= 0    
        @isbn=isbn
        @price=price
    end   #初始化方法结束 end for the initial method

    def price_as_string
        format("$%.2f",@price)
    end   #方法结束 end for the method

    attr_accessor:isbn
    attr_accessor:price

end
