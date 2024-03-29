﻿#language: ru

@tree
@Заказы

Функционал: проверка заполнения полей документа Заказ покупателя

Как Тестировщик я хочу
проверить документ Заказ покупателя 
чтобы происходило заполнение полей и блокировалось заполнение поля Контрагент если не выбран Партнер

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: подготовительный сценарий
	И я закрываю все окна клиентского приложения
	Когда экспорт основных данных

Сценарий: проверка заполнения полей
* Создание документа Заказ покупателя
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	И я нажимаю на кнопку с именем 'FormCreate'
* Заполнение поля Партнер
	И я нажимаю кнопку выбора у поля "Партнер"
	Тогда открылось окно 'Партнеры'
	И в таблице "List" я перехожу к строке:
		| 'Наименование'            |
		| 'Клиент 1 (1 соглашение)' |
	И в таблице "List" я выбираю текущую строку	
* Проверка заполнения полей Партнер и Соглашения
	Тогда элемент формы с именем "Partner" стал равен 'Клиент 1 (1 соглашение)'
	Тогда элемент формы с именем "Agreement" стал равен 'Соглашение с клиентами (расчет по документам + кредитный лимит)'	
* Проверка заполнения полей после записи		
	И я нажимаю на кнопку 'Записать'
	И я сохраняю навигационную ссылку текущего окна в переменную "$ДокументаЗаказа$"
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "$ДокументаЗаказа$"	
	Тогда элемент формы с именем "Partner" стал равен 'Клиент 1 (1 соглашение)'
	Тогда элемент формы с именем "Agreement" стал равен 'Соглашение с клиентами (расчет по документам + кредитный лимит)'
	И я закрываю все окна клиентского приложения
				
Сценарий: блокировка поля Контрагент при незаполненном поле Партнер документа Заказ покупателя
* Создание документа Заказ покупателя
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	И я нажимаю на кнопку с именем 'FormCreate'
* Заполнение поля Партнер
	И я нажимаю кнопку выбора у поля "Партнер"
	Тогда открылось окно 'Партнеры'
	И в таблице "List" я перехожу к строке:
		| 'Наименование'            |
		| 'Клиент 1 (1 соглашение)' |
	И в таблице "List" я выбираю текущую строку
* Проверка блокировки поля Контрагент в случае если не выбран Партнер
	И я нажимаю кнопку очистить у поля "Партнер"
	И элемент формы с именем "LegalName" не доступен	