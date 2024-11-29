---
## Front matter
title: "Лабораторная работа №5"
subtitle: "Основы работы с Midnight Commander (mc). Структура программы на языке ассемблера NASM. Системные вызовы в ОС GNU Linux"
author: "Ротару Валериа Игоревна"

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
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
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

Умение работать в Midnight Commander и освоение инструкций языка ассемблера mov  и int.
# Задание

1. Открыть  Midnight Commander.
2. Создать папку lab05.
3. Создать файл lab5-1.asm
4. Пишем программу вывода сообщения на экран и ввода строки с клавиатуры.
5. Выполнить компоновку объектного файла.
6. Запуск получившегося файла.
7. Создать новый файл lab5-2.asm
8. Изменение при замене sprintLF на sprint.
9. Самостоятельная работа.


# Теоретическое введение

Здесь описываются теоретические аспекты, связанные с выполнением работы.

Например, в табл. [-@tbl:std-dir] приведено краткое описание стандартных каталогов Unix.

: Описание некоторых каталогов файловой системы GNU Linux {#tbl:std-dir}

| Имя каталога | Описание каталога                                                                                                          |
|--------------|----------------------------------------------------------------------------------------------------------------------------|
| `/`          | Корневая директория, содержащая всю файловую                                                                               |
| `/bin `      | Основные системные утилиты, необходимые как в однопользовательском режиме, так и при обычной работе всем пользователям     |
| `/etc`       | Общесистемные конфигурационные файлы и файлы конфигурации установленных программ                                           |
| `/home`      | Содержит домашние директории пользователей, которые, в свою очередь, содержат персональные настройки и данные пользователя |
| `/media`     | Точки монтирования для сменных носителей                                                                                   |
| `/root`      | Домашняя директория пользователя  `root`                                                                                   |
| `/tmp`       | Временные файлы                                                                                                            |
| `/usr`       | Вторичная иерархия для данных пользователя                                                                                 |

Более подробно про Unix см. в [@tanenbaum_book_modern-os_ru; @robbins_book_bash_en; @zarrelli_book_mastering-bash_en; @newham_book_learning-bash_en].

# Выполнение лабораторной работы

1. Открыть  Midnight Commander(См Рис_1)

![Рис_1](image/Рис_1.png){width=100%}
Открытие программы Midnight Commander/Рис_1

2. Создать папку lab05(См Рис_2)

![Рис_2](image/Рис_2.png){width=100%}
Папка lab05/Рис_2

3. Создать файл lab5-1.asm(См Рис_3)

![Рис_3](image/Рис_3.png){width=100%}
Файл lab5-1.asm/Рис_3

4. Пишем программу вывода сообщения на экран и ввода строки с клавиатуры(См Рис_4)

![Рис_4](image/Рис_4.png){width=100%}
Программа вывода сообщения на экран и ввода строки с клавиатуры/Рис_4

5. Выполнить компоновку объектного файла(См Рис_5)

![Рис_5](image/Рис_5.png){width=100%}
Компоновка файла/Рис_5

6. Запуск получившегося файла(См Рис_6)

![Рис_6](image/Рис_6.png){width=100%}
Запуск файла/Рис_6

7. Создать новый файл lab5-2.asm(См Рис_7)

![Рис_7](image/Рис_7.png){width=100%}
Новый файл lab5-2.asm/Рис_7

8. Изменение при замене sprintLF на sprint(См Рис_8)
      
      После вывода программа не переходит на новую строку

![Рис_8](image/Рис_8.png){width=100%}
Замена на sprint/Рис_8

9. Самостоятельная работа(См Рис_9_1 и Рис_9_2)

![Рис_9_1](image/Рис_9_1.png){width=100%}
Изменения без использования внешнего файла in_out.asm/Рис_9_1

![Рис_9_2](image/Рис_9_2.png){width=100%}
Изменения с использование подпрограмм из внешнего файла in_out.asm/Рис_9_2


# Выводы

Я научилась работать в Midnight Commander и освоила инструкции языка ассемблера mov  и int.

# Список литературы{.unnumbered}

::: {#refs}
:::
