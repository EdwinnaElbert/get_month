get_month.rb is a simple program written in ruby, which returns the most frequent month(s) from the list in any .txt file.
It presumes that each line from the .txt file contains only one date formatted like dd.mm.yy.

get_genres.rb takes a .txt file with a film name on each line of it and returns list of genres sorted by frequency related to the films. It presumes that each line from the text file has been formatted as in this example:
1. Withnail and I (13.12.06) 0

For running 'get_month.rb' or 'get_genres.rb', you should have ruby installed. If you use Mac/Linux, Ruby should already be preinstalled on your machine.
If you have a Windows Machine, you can install Ruby using the Ruby Installer here http://rubyinstaller.org.
Further reading on ruby installation: https://www.ruby-lang.org/en/documentation/installation/#apt.

Run $ git clone https://github.com/EdwinnaElbert/get_month in your terminal.
Place your text file into the get_month directory.
cd into that directory.
Run $ bundle install
Run $ irb
Run $ load 'get_month.rb' OR Run $ load 'get_genres.rb'
It will ask you for the name of the text file you want to search through.
Enter the file name and extension (example: myfile.txt).
If you enter nothing or non-existent filename, get_month.rb will load default file films.txt.
You get the most frequent month from file if you have loaded 'get_month.rb'.
You get the list of genres sorted by frequency if you have loaded 'get_genres.rb'.

------

get_month.rb -- простая программа, написанная на руби, которая возвращает наиболее часто упоминаемый месяц (или несколько) из списка, хранящегося в файле .txt.
Подразумевается, что в каждой строке файла указана только одна дата в формате дд.мм.гг.

get_genres.rb использует .txt файл с названием фильма на каждой строке и возвращает список жанров этих фильмов, сортированный по частоте. 
Предполагается, что каждая строка текстового файла имеет вид:
1. Название фильма (13.12.06) 0

Для запуска get_month.rb или get_genres.rb нужно иметь установленный руби, Подробно https://www.ruby-lang.org/ru/documentation/installation/.
Запустите $ git clone https://github.com/EdwinnaElbert/get_month в консоли.
Поместите текстовый файл в директорию get_month.
Перейдите в эту директорию.
Запустите $ bundle install
Запустите $ irb
Запустите $ load 'get_month.rb' или $ load 'get_genres.rb'
Программа спросит название файла для чтения. Введите название и расширение (напр. myfile.txt).
Если ввести несуществующее имя файла, программа прочитает файл по умолчанию films.txt.
Вы получите наиболее часто упоминаемый в текстовом файле месяц (или несколько, если разные месяцы упоминаются одинаковое количество раз) после запуска 'get_month.rb'.

Вы получите список жанров, сортированный по частоте после запуска 'get_genres.rb'.
-----



