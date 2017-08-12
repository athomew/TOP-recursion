# Ex. 1. a) First n fibonacci numbers with iterators.

def fibs n
  return [1]*n if n < 3

  sequence = [1, 1]
  (n - 2).times { |n| sequence.push(sequence[-1] + sequence[-2]) }

  return sequence
end

# Ex. 1. b) First n fibonacci numbers with recursion.

def fibs_rec n
  (n<3) ? [1]*n : fibs_rec(n-1).push(fibs_rec(n-1)[-1] + fibs_rec(n-1)[-2])
end
