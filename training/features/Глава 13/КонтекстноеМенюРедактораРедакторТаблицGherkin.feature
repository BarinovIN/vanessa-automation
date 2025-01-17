﻿# language: ru

@lessons

Функционал: Интерактивная справка. Контекстное меню редактора. Таблицы Gherkin.

Сценарий: Контекстное меню редактора. Таблицы Gherkin.

	* Привет! В этом уроке я расскажу тебе про контекстное меню редактора и таблицы Gherkin. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения

	* Загр^узим тестовый пример.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features\Примеры\ПримерКонтекстноеМенюРедактораТаблицыGherkin.feature"

	* В контекстном меню редактора есть возможность работать с таблицами Gherkin.
		Если существует элемент UI Automation "ЭтотСеанс" с именем "Генератор EPF" и типом "" Тогда
			И я запоминаю строку "Истина" в переменную "ЯзыкРусский"
		Иначе	
			И я запоминаю строку "Ложь" в переменную "ЯзыкРусский"
		И я делаю клик по элементу формы 'ЭтотСеанс' '' 'Document' правой кнопкой UI Automation
		И Пауза 1

	* Данный пункт меню позволяет начать редактирование таблицы в специальном окне. Горячая клавиша, контрол, плюс, шифт, плюс тэ.
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюРедактироватьТаблицуТекст" "Редактировать таблицу" и перемещаю курсор

	* При выборе пункта меню откроется редактор таблиц Gherkin.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorКонтекстноеМенюРедактироватьТаблицуТекст' UI Automation	
		И Пауза 1
		
	* Данное окно позволяет быстро отредактировать таблицу и поместить результат обратно в сценарий.

	* В данной таблице можно отредактировать значения ячеек.
		И я запоминаю родителя элемента "\'ИмяКолонки1\' ИмяКолонки1" с типом "" процесса "ЭтотСеанс" в переменную "IDЭлемента" UI Automation
		И я делаю подсветку элемента с ID '$IDЭлемента$' 'Отредактировать ячейки'		

	* А данная таблица позволяет управлять видимостью колонок.
		Если '$ЯзыкРусский$' Тогда
			И я запоминаю родителя элемента "ИмяКолонки1 " с типом "" процесса "ЭтотСеанс" в переменную "IDЭлемента" UI Automation
		Иначе	
			И я запоминаю родителя элемента "ColumnName1 " с типом "" процесса "ЭтотСеанс" в переменную "IDЭлемента" UI Automation
		И я делаю подсветку элемента с ID '$IDЭлемента$' 'Видимость колонок'		

	* Эта кнопка позволяет установить видимость всех колонок таблицы.
		И Я делаю подсветку элемента VA "РедакторТаблицСписокКолонокПометитьВсе" "Пометить все колонки"

	* А эта кнопка позволяет отключить видимость всех колонок таблицы.
		И Я делаю подсветку элемента VA "РедакторТаблицСписокКолонокСнятьВсе" "Снять все пометки"

	* Эта кнопка позволяет сдвинуть колонку ближе к началу таблицы.
		И Я делаю подсветку элемента VA "РедакторТаблицСписокКолонокСдвинутьКолонкуВВерх" "Сдвинуть колонку к началу"
	
	* А эта кнопка позволяет сдвинуть колонку ближе к концу таблицы.
		И Я делаю подсветку элемента VA "РедакторТаблицСписокКолонокСдвинутьКолонкуВниз" "Сдвинуть колонку к концу"
		И Пауза 0.1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'РедакторТаблицСписокКолонокСдвинутьКолонкуВниз' UI Automation	
		И Пауза 1

	* Данная кнопка позволяет добавить ещё одну колонку в таблицу.
		И Я делаю подсветку элемента VA "РедакторТаблицСписокКолонокДобавитьКолонку" "Добавить колонку"

	* После того как редактирование закончено надо нажать на эту кнопку и отредактированная таблица будет помещена в текст редактора.
		И Я делаю подсветку элемента VA "РедакторТаблицФормаОК" "Завершение редактирования"
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'РедакторТаблицФормаОК' UI Automation	

	* На этом всё, переходи к следующему уроку интерактивной справки.



