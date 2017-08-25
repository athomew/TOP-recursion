# Ex. 1. a) First n fibonacci numbers with iterators.

def fibs n
  return [1]*n if n < 3

  sequence = [1, 1]
  (n - 2).times { |n| sequence.push(sequence[-1] + sequence[-2]) }

  return sequence
end

# Ex. 1. b) First n fibonacci numbers with recursion.

def fibs_rec n
  (n < 3) ? [1]*n : fibs_rec(n - 1) << fibs_rec(n - 1)[-1] + fibs_rec(n - 1)[-2]
end

# Ex 2. Implement merge sort

def merge_sort list
  midpoint = list.length/2

  if list.length < 2
    return list
  else
    list_left = list[0..(midpoint - 1)]
    list_right = list[midpoint..-1]

    list_left = merge_sort(list_left)
    list_right = merge_sort(list_right)

    return result = merge_lists(list_left, list_right)
  end
end

def merge_lists(list_a, list_b)
  merged_list = []

  until list_a == [] && list_b == []
    if list_a == []
      merged_list << list_b.shift
    elsif list_b == []
      merged_list << list_a.shift
    elsif list_a[0] <= list_b[0]
      merged_list << list_a.shift
    else
      merged_list << list_b.shift
    end
  end

  return merged_list
end
