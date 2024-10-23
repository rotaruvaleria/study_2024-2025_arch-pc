---
## Front matter
title: "Отчет по лабораторной работе №2"
subtitle: "Работа в системе git"
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

Научиться работать с системой Git, изучить средства контроля версий.
Выполнение задание для самостоятельной работы.

# Задание

1. Изучение документации для работы с системой git
2. Настройка github
3. Базовая настройка git
4. Создание SSH ключа
5. Сознание рабочего пространства и репозитория курса, а также настройка
каталога курса
6. Выполнение задания для самостоятельной работы

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

1. В пункте 2.4.2. нас просят сделать предварительную конфигурацию git.
(см 1_1)

![1_1](image/1_1.png){width=100%}
Базовая настройка git (1_1)

2. В пункте 2.4.3 требуется создать SSH ключ(см 1_2)

![1_2](image/1_2.png){width=100%}
Создание ключа SSH/Публичный SSH ключ(1_2)

3. В пунктах 2.4.4. - 2.4.6 нужно создать рабочее пространство и репозиторий
курса, а также настроить каталог курса(см 1_3, 1_4, 1_5, 1_6, 1_7)

![1_3](image/1_3.png){width=100%}
Создание каталога для предмета "Архитектура компьютера"(1_3)

![1_4](image/1_4.png){width=100%}
Кланирование созданного репозитория курса(1_4)

![1_5](image/1_5.png){width=100%}
Удаление лишних файлов и создание необходимого каталога(1_5)

![1_6](image/1_6.png){width=100%}
Отправка файла на сервер(1_6)

![1_7](image/1_7.png){width=100%}
Команда make(1_7)

4. В пункте 2.5 необходимо выполнить задание для самостоятельной работы
    1. Создать отчет по выполнению лабораторной работы в соответствующем
каталоге рабочего пространства
    2. Скопировать отчеты по выполнению предыдущих лабораторных работ в
соответствующие каталоги рабочего пространства.
    3. Загрузите файлы на github.
    
    
# Выводы

В результате я научилась работать с системой git, узнала новые команды
и создала рабочее пространство и репозиторий курса.

# Список литературы{.unnumbered}

::: {#refs}
:::
