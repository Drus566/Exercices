# двумерные целочисленные массивы
array = Array.new(4){ Array.new(rand(2..4)){rand(-6..6)}}
array_a = [
            [1,4,2], 
            [4,1,2], 
            [12,20,1]
          ]
array_b = [
            [2,4,2], 
            [4,10,2], 
            [12,20,15]
          ]
array_c = [
            [0,0,0], 
            [0,0,0], 
            [12,0,0]
          ]


# Найти максимальный элемент для каждого столбца, а затем получить произведение этих элементов.
def task1(array)
    puts "task1"
    puts "Массив" 
    array.map { |a| print "#{a}\n" }
    result = array.transpose.inject(1) { |res, elem| res * elem.max }
    puts "Произведение максимальных элементов стобцов #{result}"
    puts 
end

# Найти минимум в двумерном массиве.
def task2(array)
    puts "task2"
    puts "Массив" 
    array.map { |a| print "#{a}\n" }
    result = array.flatten.min
    puts "Минимум двумерного массива #{result}"
    puts
end

# Найти произведение положительных элементов.
def task3(array)
    puts "task3"
    puts "Массив" 
    array.map { |a| print "#{a}\n" }
    result = array.flatten.inject(1) { |res, elem| elem > 0 ? res * elem : res  }
    puts "Произведение положительных элементов #{result}"
    puts 
end

# Найти сумму положительных элементов, больших К.
def task4(array, k)
    puts "task4"
    puts "Массив" 
    array.map { |a| print "#{a}\n" }
    result = array.flatten.inject(0) { |res, elem| elem > k ? res + elem : res }
    puts "Сумма положительных элементов, больших #{k}: #{result}"
    puts
end

# Вычислить сумму и среднее арифметическое элементов главной диагонали.
def task5(array)
    puts "task5"
    puts "Массив" 
    array.map { |a| print "#{a}\n" }
    diag = []
    array.map.with_index { |elem, i| diag << elem[i] }
    sum = diag.inject(:+)
    average = sum / diag.size
    puts "Сумма и среднее арифметическое элементов главной диагонали: #{sum}, #{average}"
    puts 
end

# Найти номера строк, все элементы которых — нули.
def task6(array)
    puts "task6"
    puts "Массив" 
    array.map { |a| print "#{a}\n" }
    # получаем индекс элемента ГЛАВНОГО массива, который является в свою очередь массивом
    result = array.map.with_index { |a, i| i if (a.all? { |elem| elem.zero? })}.compact
    puts "Номера строк, все элементы которых нули #{result}"
    puts
    
end

task1(array_a)
task2(array)
task3(array)
task4(array, 1)
task5(array_b)
task6(array_c)