﻿#language: ru
@tree
@ExportScenarios
Функционал: ПодготовкаДанных_Организации

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Подготовка данных

	И я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Код'       | 'Наименование'       | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94563' | 'False'           | '000000004' | 'ООО Учет'           | 'False'        |		


	
Сценарий: откат данных
И В командном интерфейсе я выбираю "Откат изменений данных" "История изменения данных (ОИД)"
И в таблице 'Список' я перехожу к строке
	| 'Код' | 'Наименование'        |
	| '28'  | 'Начало тестирования' |
И в таблице 'Список' я активизирую поле с именем 'Наименование'
И в таблице 'Список' я нажимаю на кнопку с именем 'ФормаОткатитьИзмененияДоТекущего'
И я нажимаю на кнопку с именем 'Button0'
И я перехожу к следующему реквизиту
И я нажимаю на кнопку с именем 'Button0'


