words = []
last = words.length-1

while words[last] != '' 
  any_word =gets.chomp
  words.push(any_word)
end
words.pop['']

def shuffle array
  recursive_shuff array, []
end

def recursive_shuff unshuff, shuff
  if unshuff.length == 0
    puts shuff.inspect
  else 
    y = rand(unshuff.length)
    x = y - 1
    shuff.push(unshuff[x])
    unshuff.delete_at(x)
    recursive_shuff(unshuff, shuff)
  end
end

shuffle words