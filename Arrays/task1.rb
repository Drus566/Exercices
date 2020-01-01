# одномерные массивы
array = Array.new(4){rand(-6..6)}
array_a = [1,2,3,4,4]
# print array
# Вывести индексы массива в том порядке, в котором соответствующие 
# им элементы образуют возрастающую последовательность.
def task1(array)
    puts "task1"
    index_array = []
    sorted_array = array.sort.each { |i| index_array << array.index(i)}
    print "Индексный массив #{index_array}"
    puts
    print "Первоначальный массив #{array}"
    puts
    print "Отсортированный массив #{sorted_array}"
    puts
    puts
end

# В численном массиве найти сумму отрицательных элементов.
def task2(array)
    puts "task2"
    summ = array.inject(0){ |result, elem| elem < 0 ? result + elem : result }
    print "Массив #{array}"
    puts
    print "Сумма отрицательных чисел #{summ}" 
    puts
    puts
end

# Найти все индексы, по которым располагается максимальный элемент.
def task3(array)
    puts "task3"
    result = [] 
    array.each_with_index { |elem, index| result << index if elem == array.max }
    print "Массив #{array}"
    puts
    print "Индексы максимальных элементов #{result}"
    puts
    puts
end

# В массиве переставить в начало элементы, 
# стоящие на чётной позиции, а в конец — стоящие на нечётной
def task4(array)
    puts "task4"
    result = []
    array.each{ |elem| elem.even? ? result.unshift(elem) : result.push(elem) }
    print "Массив #{array}"
    puts 
    print "Четные вначале, нечетные в конце #{result}"
    puts
    puts
end

task1(array)
task2(array)
task3(array)
task4(array)