# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA25_Макеты_для_отчетов_о_выполнении

#https://github.com/silverbulleters/vanessa-behavior/issues/102

@IgnoreOnCIMainBuild


Функционал: Тестовая фича, проверяющая генерацию отчета jUnit1
 


Сценарий: Выполнение первого простого сценария. Тестовая фича, проверяющая генерацию отчета jUnit
	Когда я выполняю простой шаг
	И я выполняю ещё простой шаг
	
Сценарий: Падающий сценарий
	Когда я выполняю простой шаг
	И я не выполняю простой шаг
	
Сценарий: Пропущенный сценарий
	Когда я выполняю не реализованный простой шаг

Структура сценария: Сценарий с таблицей
		Когда я выполняю шаг в служебной фиче с параметром <Параметр>
		
	Примеры:
		|  Параметр  |
		|  1         |
		|  2         |
		