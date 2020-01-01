require 'matrix'
array = [1, 2, 3, 4, 5]
vector = Vector[*array]
p vector + vector    #=> Vector[2, 4, 6, 8, 10]
p array + array      #=> [1, 2, 3, 4, 5, 1, 2, 3, 4, 5]