﻿# language: ru


@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
@IgnoreOnWeb

@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314
@IgnoreOn8315
@IgnoreOn8316

@ServerCodeCoverage


Функциональность: Открытие MD файлов в редакторе

    Как разработчик
    Я хочу чтобы в редакторе можно было открывать MD файлы
    Чтобы я мог просматривать файлы документации

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой 'VAEditor'


Сценарий: Открытие MD файлов в редакторе

	* Переход в редактор
		И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'

	* Проверка количества вкладок
		И я очищаю окно сообщений пользователю
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 
			"""bsl
				Сообщить(Ванесса.VanessaTabs.count());
			"""
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		Тогда в логе сообщений TestClient есть строки:
			|'0'|
				
	* Открытие списка уроков
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		И я нажимаю на кнопку с именем 'VanessaEditorОткрытьСписокУроков'
		И Пауза 2
		
	* Проверка количества вкладок
		И я очищаю окно сообщений пользователю
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 
			"""bsl
				Сообщить(Ванесса.VanessaTabs.count());
			"""
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		Тогда в логе сообщений TestClient есть строки:
			|'1'|
						
						