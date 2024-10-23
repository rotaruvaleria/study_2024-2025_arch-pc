---
## Front matter
title: "Лабораторная работа 3"
subtitle: "Язык разметки Markdown"
author: "Ротару В. И."

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

Изучить язык разметки Markdown, выполнить задание по лабораторной работе и составить отчёт о выполненной работе.

# Задание

1. Ознакомится с языком разметки Markdown.
2. Перейти в каталог курса и выполнить команду git pull.
3. Выполнить команду make и удалить полученный файл.
4. Открыть файл report.md с помощью любого текстового редактора.
5. Заполнить отчет и скомпилировать отчет с использованием Makefile.
6. Загрузить файлы на Github.
7. Выполнить задание для самостоятельной работы.

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

1. Выполнение команды git pull(См Рис_1)

![Рис_1](image/Рис_1.png){width=100%}
git pull(Рис_1)

2. Выполнение команды make, чтобы провести компиляцию шаблона с использованием Makefile(См Рис_2)

![Рис_2](image/Рис_2.png){width=100%}
Команда make(Рис_2)

3. Удаление файла с помощью make clean(Рис_3)

![Рис_3](image/Рис_3.png){width=100%}
Удаление файла(Рис_3)

4. Открыть файл report.md, заполнить и скомпилирование отчет (См Рис_4)

![Рис_4](image/Рис_4.png){width=100%}
report.md, заполнение и скомпилирование отчета(Рис_4)

5. Загрузить файл на Github(См Рис_6)
 
![Рис_5](image/Рис_5.png){width=100%}
Загрузка на Github(Рис_5)

6. Выполнить самостоятельную работу(См Рис_6)

![Рис_6](image/Рис_6.png){width=100%}
Самостоятельная работа(Рис_6)


# Выводы

Мы освоили  процедуры оформления отчетов с помощью легковесного
языка разметки Markdown и сделали самостоятельную работу по выполненной лабораторной работе.

# Список литературы{.unnumbered}

::: {#refs}
:::
