words = []
last = words.length-1

while words[last] != '' 
  any_word =gets.chomp
  words.push(any_word)
end
words.pop['']

def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted, sorted
  original = unsorted
  if unsorted.length == 0
    puts sorted.inspect
  else
    x = 0
    y = 0
    first = unsorted[x]
    while x < unsorted.length-1
      second = unsorted[x+1]
      if first.downcase>second.downcase
        first = second
        y = x + 1
      end
      x += 1
    end
    sorted.push(first)
    unsorted.delete_at(y)
    recursive_sort unsorted, sorted
  end
end

sort words