require 'pry'

def my_find(collection)
    i = 0
    while i < collection.length
      if yield(collection[i])
        return collection[i] #we only want to return first element that is true
      end
      i = i + 1
    end
  end


#you pass the block argument when you call it! the yield is in the definition
collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 && i % 5 == 0 }
  #=> false
#In this example, ruby will send 15
#(the return value of the block) back to the
#my_find method because i % 3 and i % 5, first one true is 15
