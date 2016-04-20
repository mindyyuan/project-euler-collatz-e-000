require 'pry'

def even_next(n)
  n/2
end

def odd_next(n)
  3*n + 1
end

def next_value(n)
  n % 2 == 0 ? even_next(n) : odd_next(n)
end

def collatz(n)
  arr= []
  while n != 1
    arr.push(n)
    n = next_value(n)
  end
  arr.push(1)
end

def longest_collatz
  longest = 0
  n = 999999

  while n > 1
    if collatz(n).length > longest
       longest = collatz(n).length
       arr = collatz(n)
    end
    n-=1
  end
  arr.first
end
