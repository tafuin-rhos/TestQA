﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Переменные:
	ЗаголовокФормыСпискаПоступления = '{!Metadata.Documents.PurchaseInvoice.ListPresentation}'
	ЗаголовокПодсистемаЗакупок = '{!Metadata.Subsystems.PurchaseAP.Synonym}'

Сценарий: открытие формы списка Поступлений товаров и услуг
	И В командном интерфейсе я выбираю "ЗаголовокПодсистемаЗакупок" "ЗаголовокФормыСпискаПоступления"
	
