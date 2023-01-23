---
## Front matter
title: "Шаблон отчёта по лабораторной работе"
subtitle: "8"
author: "Сильвен Макс Грегор Филс б НКАбд-03-22"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts(рис. [-@fig:001])
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы
- В восьмой лабораторной работе мы узнаем о команде условных и безусловных
переходов, делая это, мы освоим использование переходов, а также познакомим-
ся со структурой файла листинга.


# Выполнение лабораторной работы :

##Реализация переходов в NASM :

- Здесь мы начали с создания, а затем переместились в восмой каталог лабо-
ратории “~/work/arch-pc/lab08”, после чего мы создали файл “lab8-1.asm”.(рис. [-@fig:1])

![Ресунок](image/1.png){ #fig:1 width=110% }

- После этого мы заполнили файл .asm кодом программы, отображающей
значение регистра eax.(рис. [-@fig:2])

![Ресунок](image/2.png){ #fig:2 width=110% }

- Затем мы скомпилировали файл, создали исполняемый файл и запустили
программу, все это после перемещения файла in_out.asm в тот же каталог,
где находится lab8-1.asm.
(рис. [-@fig:3])

![Ресунок](image/3.png){ #fig:3 width=110% }

- После этого мы изменили код в листинге.(рис. [-@fig:4])

![Ресунок](image/4.png){ #fig:4 width=110% }

- Затем мы снова скомпилировали файл и создали исполняемый файл.(рис. [-@fig:5])

![Ресунок](image/5.png){ #fig:5 width=110% }

- Затем мы снова изменили код в листинге ,чтобы вывод программы был
следующим:
user@dk4n31:~$ ./lab8-1
Сообщение No 3
Сообщение No 2
Сообщение No 1
user@dk4n31:~$
(рис. [-@fig:6])(рис. [-@fig:7])

![Ресунок](image/6.png){ #fig:6 width=110% }
![Ресунок](image/7.png){ #fig:7 width=110% }

-  После этого мы создали файл lab8-2.asm, в который мы добавим код нашей
следующей программы (рис. [-@fig:8])

![Ресунок](image/8.png){ #fig:8 width=110% }

- После этого мы заполнили файл необходимым кодом для Программы, ко-
торая определяет и выводит на экран наибольшую из 3 целочисленных
переменных: A,B и C (рис. [-@fig:9])

![Ресунок](image/9.png){ #fig:9 width=110% }

- мы скомпилировали файл, создали исполняемый файл и запустили его.(рис. [-@fig:10])

![Ресунок](image/10.png){ #fig:10 width=110% }

## Изучение структуры файлы листинга :

- Здесь и с помощью команды nasm -f elf -l lab8-2.list lab8-2.asm мы созда-
ли файл листинга файла lab8-2.asm, затем мы открыли файл с помощью
mcedit.(рис. [-@fig:11])

![Ресунок](image/11.png){ #fig:11 width=110% }

- мы выбрали эти три строки и пытаемся объяснить каждую из них.(рис. [-@fig:12])

![Ресунок](image/12.png){ #fig:12 width=110% }

- Здесь в 18-й строке мы переместили значение адреса переменной B в ре-
гистр ecx , после этого мы поместили значение 10 в регистре edx, который
определяет размер переменной B с помощью подпрограммы sread и, нако-
нец, мы вызвали подпрограмму sread

- мы открыли программный файл lab 8-2.asm и удалили один операнд в
любой инструкции с двумя операндами. Мы выбрали строку под номером
27 (рис. [-@fig:13])

![Ресунок](image/13.png){ #fig:13 width=110% }

- В результате изменений был изменен файл листинга , в котором мы по-
лучили ошибку, объясняющую отсутствующий операнд, и файлы не были
созданы.

## Выводы по результатам выполнения заданий :

- Во время лабораторной работы мы узнали, как выполнять условные и без-
условные переходы, как читать файл листинга.

# Задание для самостоятельной работы :

## Написание программы нахождения наименьшей из 3 целочисленных переменных :

**Мой вариант : 16**
- Мой код : (рис. [-@fig:14])

![Ресунок](image/14.png){ #fig:14 width=110% }

- Вывод кода :(рис. [-@fig:15])

![Ресунок](image/15.png){ #fig:15 width=110% }

## Написание программы, которая выполняет математическую операцию в зависимости от значения введенных переменных :

⎧
{𝑎 − 7, 𝑎 ≥ 7
⎨
{
⎩𝑎𝑥, 𝑎 < 7


Мой код : (рис. [-@fig:16])

![Ресунок](image/16.png){ #fig:16 width=110% }

Вывод кода :(рис. [-@fig:17])

![Ресунок](image/17.png){ #fig:17 width=110% }

# Выводы по результатам выполнения заданий :

- В этой части мы смогли применить наш полученный навык понятным
способом, заставив программу вычислять конечное значение в зависимости
от значений введенных переменных с использованием условных переходов.



# Выводы, согласованные с целью работы :

- В восьмой лаборатории мы в основном узнали, как использовать условные
и безусловные переходы в NASM, как читать структуру файла листинга.

# Список литературы{.unnumbered}

