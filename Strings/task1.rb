string = "ожидаемо компьютер    музыка пальцы дабстеп абракадабра"
string1 = " ggwp ggwpкомпьютер example новый exercise12 25 12 334 ожидаемо"
string2 = "ожидаемо компьютер   огого музыка пальцы дабстеп абракадабра \n многофункциональный"
string3 = "n ожидаемо компьютер 01231203.123123.123123 02.05.2019 01.12.9999 02:12:12 огого музыка пальцы дабстеп абракадабра \n многофункциональный 12:03:59"
string4 = " gGWp ggwpкомПьютEр example нОвЫй exercise12 25 12 334 ожидаемо"
string5 = " http://ru.wikibooks.org/wiki/Ruby sasdasd http://rGG, http://FAKE/gg magnit taklego 12312"

# Дана строка слов, разделёных пробелами. Вывести длиннейшее слово.
def task1(string)
    puts "task1"
    puts "Строка: '#{string}'"
    max = string.split(" ").map { |word| word.size }.max
    result = string.split(" ").detect{ |word| word.size == max } 
    puts "Длиннейшее слово в строке: '#{result}'"
    puts
end

# Дана строка, содержащая кириллицу, латиницу и цифры. Вывести все слова, длина которых равна средней.
def task2(string)
    puts "task2"
    puts "Строка: '#{string}'"
    array = string.scan(/[А-Яа-яA-Za-z]+/)
    count_letters = array.inject(0) { |res, word| res + word.size }
    average = count_letters / array.size
    result = array.find_all { |word| word.size == average }
    puts "Длиннейшие слова в строке: '#{result}', средняя длина слова #{average}"
    puts 
end

# Найти в строке первое целиком кириллическое слово.
def task3(string)
    puts "task3"
    puts "Строка: '#{string}'"
    result = string.scan(/\b[А-Яа-я]+\b/).first
    puts "Первое целиком кириллическое слово в строке: '#{result}'"
    puts
end

# Дан текст (строка с переносами). Найти все слова, содержащие три буквы «о». 
def task4(string)
    puts "task4"
    puts "Строка: '#{string}'"
    result = string.scan(/\b[А-Яа-я]+\b/).select { |word| word.count('о') == 3 }
    puts "Первое целиком кириллическое слово в строке: '#{result}'"
    puts
end

# Найти в тексте время в формате «часы:минуты:секунды».
def task5(string)
    puts "task5"
    puts "Строка: '#{string}'"
    result = string.scan(/\b((?:[0-1]?[0-9]{1}|[2]?[0-3]{1}):[0-5]?[0-9]{1}:[0-5]?[0-9]{1})\b/).join(", ")
    puts "Время в тексте: '#{result}'" 
    puts
end

# Найти все слова без повторяющихся букв (например, «Лисп» или «Ruby», но не «Паскаль» или «Java»). 
def task6(string)
    puts "task6"
    puts "Строка: '#{string}'"
    array = string.scan(/[А-Яа-яA-Za-z]+/)
    result = array.select { |word| word.chars.uniq.size == word.chars.size }.join(", ") 
    puts "Слова без повторяющихся букв: '#{result}'"
    puts 
end

# Найти в тексте слова́, содержащие две прописные буквы, и исправить. 
def task7(string)
    puts "task7"
    puts "Строка: '#{string}'"
    array = string.scan(/[А-Яа-яA-Za-z]+/)
    upcase_words = array.select { |word| word.chars.select { |letter| letter == letter.upcase }.size == 2 }
    result = upcase_words.map { |word| word.downcase }
    puts "Слова, содержащие две прописные буквы: '#{upcase_words.join(", ")}'"
    puts "Исправленные слова: '#{result.join(", ")}'"
    puts
end

# Найти в тексте даты формата «день.месяц.год» (05.05.1996).
def task8(string)
    puts "task8"
    puts "Строка: '#{string}'"
    result = string.scan(/\b((?:[0-2]?[1-9]{1}|[3]?[0-1]{1})\.(?:[0]?[1-9]{1}|[1]?[0-2]{1})\.(?:[0-9]{1,4}))\b/).join(", ")
    puts "Даты в тексте: '#{result}'" 
    puts
end

# Дан текст. Найдите все URL адреса и вычлените 
# из них ссылку на корневую страницу сайта (например, из http://ru.wikibooks.org/wiki/Ruby сделайте 
def task9(string)
    puts "task9"
    puts "Строка: '#{string}'"
    array = string.scan(/\bhttp:\/\/[a-zA-Z.\/]+\b/)
    result = array.map { |word| word.scan(/\bhttp:\/\/[a-zA-Z.]+\b/) }.join(", ")
    puts "URL из текста: '#{array.join(", ")}'"
    puts "Корневые страницы URL: '#{result}'"
    puts 
end

task1(string)
task2(string1)
task3(string1)
task4(string2)
task5(string3)
task6(string3)
task7(string4)
task8(string3)
task9(string5)
