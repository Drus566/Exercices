# двумерные массивы
array = Array.new(4){ Array.new(rand(2..4)){rand(-6..6)}}
array_a = [
            [1,3,2], 
            [4,1,2], 
            [12,20,1]
          ]
array_b = [
            [12, 43, 75], 
            [10, 1, 68], 
            [65, 14, 74]
          ]
# Поменять первый и последний столбец массива местами.
def task1(array)
    puts "task1"
    print "Массив #{array}" 
    puts
    array.each{ |arr| arr[0], arr[-1] = arr[-1], arr[0] }
    print "Смена мест первого и последнего элемента массива #{array}"
    puts
    puts    
end

# Упорядочить N-ый столбец
def task2(array, n)
    puts "task2"
    puts "Массив" 
    array.map { |a| print "#{a}\n" }
    puts "Транспонированный массив"
    array.transpose.map { |a| print "#{a}\n" }
    transpose_array = array.transpose
    transpose_array[n].sort!
    result = transpose_array.transpose
    puts "Упорядоченный N-ый столбец"
    result.map { |a| print "#{a}\n" }
    puts
end

# Упорядочить строки, содержащие максимальный элемент.
def task3(array)
    puts "task3"
    puts "Массив" 
    array.map { |a| print "#{a}\n" }
    array.map { |a| a.sort! if a.max == array.flatten.max }
    puts "Массив с сортированными строками, которые содержать максимальный элемент" 
    array.map { |a| print "#{a}\n" }
    puts
end

# Упорядочить строки, если они не отсортированы и перемешать, если они отсортированы.
def task4(array)
    puts "task4"
    puts "Массив"
    array.map { |a| print "#{a}\n" }
    array.map { |a| a == a.sort ? a.sort_by!{ rand } : a.sort! }
    puts "Массив с сортированными строками если не были сортированы и наоборот"
    array.map { |a| print "#{a}\n" }
    puts
end

# Упорядочить строки массива по значению элемента главной диагонали в каждой из строк (в исходном массиве).
def task5(array)
    puts "task5"
    puts "Массив"
    array.map { |a| print "#{a}\n" }
    array.sort_by!.with_index {|elem, i| elem[i]}
    puts "Отсортированный по главной диагонали массив"
    array.map { |a| print "#{a}\n" }
    puts
end

# Найти номера строк, элементы которых упорядочены по возрастанию.
def task6(array)
    puts "task6"   
    puts "Массив"
    array.map { |a| print "#{a}\n" }
    result = []
    array.map.with_index { |a, i| result << i if a == a.sort }
    print "Номера строк, элементы которых упорядочены по возрастанию #{result}"
    puts
end

task1(array)
task2(array_a, 1)
task3(array)
task4(array)
task5(array_b)
task6(array_b)
