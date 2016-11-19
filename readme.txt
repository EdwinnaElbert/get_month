get_month.rb is a simple program written in ruby, which returns the most frequent month(s) from the list in any .txt file.
It presumes that each line from the .txt file contains only one date formatted like dd.mm.yy.

For running get_month.rb, you should have ruby installed. If you use Mac/Linux, Ruby should already be preinstalled on your machine.
If you have a Windows Machine, you can install Ruby using the Ruby Installer here http://rubyinstaller.org.
Further reading on ruby installation: https://www.ruby-lang.org/en/documentation/installation/#apt.

Place your text file into the get_month directory.
Open your terminal, cd into that directory.
Run $ bundle install
Run $ irb
Run $ load 'get_month.rb'
It will ask you for the name of the text file you want to search through.
Enter the file name and extension (example: myfile.txt).
If you enter nothing or non-existent filename, get_month.rb will load default file films.txt.
You get the most frequent month from file.

------

get_month.rb -- простая программа, написанная на руби, которая возвращает наиболее часто упоминаемый месяц (или несколько)
из списка, хранящегося в файле .txt.
Подразумевается, что в каждой строке файла указана только одна дата в формате дд.мм.гг.

Для запуска get_month.rb нужно иметь установленный руби, Подробно https://www.ruby-lang.org/ru/documentation/installation/.

Поместите текстовый файл в директорию get_month.
Откройте консоль, перейдите в эту директорию.
Запустите $ bundle install
Запустите $ irb
Запустите $ load 'get_month.rb'
Программа спросит название файла для чтения. Введите название и расширение (напр. myfile.txt).
Если ввести несуществующее имя файла, программа прочитает файл по умолчанию films.txt.
Вы получите наиболее часто упоминаемый в текстовом файле месяц (или несколько, если разные месяцы упоминаются одинаковое количество раз).
