array = Array.new(6){rand(-6..6)}
array1 = [0, -1, 2, -3]

# Дан целочисленный массив. Найти количество чётных элементов
def task1(array)
    puts "task1"
    print "Массив #{array}\n"
    result = array.select{ |e| e.even? }.size
    puts "Количество четных элементов массива: #{result}\n\n"
end

# Дано натуральное число. Необходимо проверить, является ли оно совершенным.
def task2(n)
    puts "task2"
    result = (1..n-1).select { |digit| n % digit == 0 }.inject(0){|res, el| res + el } == n ? 'является' : 'не является'
    puts "Число #{n} #{result} совершенным\n\n"
end

# Дан целочисленный массив. Найти количество его локальных максимумов.
def task3(array)
    puts "task3"
    print "Массив #{array}\n"
    result = (1..array.size - 2).select { |i| array[i] > array[i + 1] && array[i] > array[i - 1] }.count
    puts "Количество локальных максимумов в массиве #{result}\n\n"
end

# Дан целочисленный массив. Проверить, чередуются ли в нем положительные и отрицательные числа.
def task4(array)
    puts "task4"
    print "Массив #{array}\n"
    result = (0..array.size - 1).all? { |i| (array[0] < 0) ? (i.even? ? array[i] < 0 : array[i] >= 0 ) : (i.even? ? array[i] >= 0 : array[i] < 0) }
    puts "В массиве #{'не ' if !result}чередуются положительные и отрицательные числа\n\n"
end

# Дан целочисленный массив и отрезок a..b. 
# Необходимо найти элементы, значение которых принадлежит этому отрезку.
def task5(array, sub)
    puts "task4"
    print "Массив #{array}\n"
    print "Отрезок #{sub}\n"
    result = array.select { |e| sub.include?(e) }
    print "Элементы массива принадлежащие отрезку: #{result}\n\n"
end
task1(array)
task2(28)
task3(array)
task4(array1)
task5(array, array1)

