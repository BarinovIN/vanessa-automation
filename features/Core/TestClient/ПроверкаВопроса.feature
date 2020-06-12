# language: ru
# encoding: utf-8
#parent uf:
@UF4_Библиотека_шагов
#parent ua:
@UA52_Работать_с_UI_прочее

@IgnoreOn82Builds
@IgnoreOnOFBuilds

@tree


Функционал: Проверка нажатия на кнопку диалога, который был вызван через ПоказатьВопрос

Как разработчик
Я хочу чтобы корректно работало нажатие на кнопку диалога ПоказатьВопрос
Чтобы я мог в сценариях нажать на эту кнопку

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
	
Сценарий: Проверка нажатия на кнопку диалога, который был вызван через ПоказатьВопрос
	Когда В панели разделов я выбираю "Основная"
	И в панели функций я выбираю "Справочник3"
	Тогда открылось окно "Справочник3"
	И я нажимаю на кнопку "Создать"
	Тогда открылось окно "Справочник3 (создание)"
	Тогда в окне сообщений пользователю нет сообщений
	И я нажимаю на кнопку "Показать вопрос с нестандартным диалогом"
	Если это web клиент Тогда
		Тогда открылось окно "1С:Предприятие"
	Иначе	
		Тогда открылось окно "Нестандартный диалог"
	И я нажимаю на кнопку "Да"
	
	#До 8.3.10 из отдельного окна неполучится получить сообщения пользователю
	Если Версия платформы ">=" "8.3.10" Тогда
		Тогда в сообщениях пользователю нет одинаковых сообщений
		И В последнем сообщении TestClient есть строка "Да"
		И В последнем сообщении TestClient нет строки "Нет"
		И в логе сообщений TestClient нет строки "Нет"
		Дано В последнем сообщении  TestClient есть строка по шаблону "Д*"
		Тогда в логе сообщений TestClient есть строка по шаблону "Д*"
		И я нажимаю на кнопку "Показать вопрос с нестандартным диалогом"
		Если это web клиент Тогда
			Тогда открылось окно "1С:Предприятие"
		Иначе	
			Тогда открылось окно "Нестандартный диалог"
		И я нажимаю на кнопку "Да"
		Когда в логе сообщений TestClient есть сообщения только из списка
			| 'Да' |