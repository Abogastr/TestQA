﻿#language: ru

@tree
Функционал: Проверка галочки валютный учет

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения

Сценарий: Проверка галочки валютный учет
		И Подготовка данных
	* Проверка организации
		И В командном интерфейсе я выбираю "Предприятие" "Организации"		
		И в таблице 'Список' я перехожу к строке:
			| "Валютный учет" | "Код"       | "Наименование" |
			| "Нет"           | "000000004" | "ООО Учет"     |
		Тогда элемент формы с именем 'ВалютныйУчет' стал равен "Нет"


Сценарий: откат данных к исходным		
	И Откат данных
			
				
