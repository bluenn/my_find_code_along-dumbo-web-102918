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
my_find(collection) {|1| 1 % 3 == 0 and 1 % 5 == 0 }
  #=> false
#In this example, ruby will send false
#(the return value of the block) back to the
#my_find method because 1 % 3 == 0 and 1 % 5 == 0 evaluates
#to false.
