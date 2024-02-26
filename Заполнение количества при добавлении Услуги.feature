﻿#language: ru

@tree
// заполнение
Функционал: Заполнение количества при добавлении Услуги

Как Менеджер по закупкам я хочу
проверить возможность заполнения поля Количество
при добавлении Услуги в документ Заказ  

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий
И я закрываю все окна клиентского приложения

Сценарий: Заполнение количества при добавлении Услуги

* Создание документа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'

* Заполнение шапки документа
	И из выпадающего списка с именем "Организация" я выбираю по строке 'ООО "Все для дома"'
	И из выпадающего списка с именем "Покупатель" я выбираю по строке 'Мосхлеб ОАО'
	И из выпадающего списка с именем "Склад" я выбираю по строке 'Малый'
	И из выпадающего списка с именем "Валюта" я выбираю по строке 'Рубли'

* Заполнение табличной части
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000036' | 'Услуги'     |
	И в таблице  "Список" я перехожу на один уровень вниз
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000037' | 'Доставка'     |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'

	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '1 000,00'
	// ждем падения
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '10'

