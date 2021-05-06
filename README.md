# Описание

- Содержит исходный код для Базового модуля
- Реализует форму обратной связи

# Приступая к работе

Нужно иметь на локальной машине следующее:
1. php от v7.4.3 с Xdebug v.2.9.2
2. apache 2.4.41
3. mysql
4. phpmyadmin

# Установка

0. Скопируйте папку form.devel в корневую директорию вашего apache 2.4 сервера.
1. Создайте виртуальный хост в папке apache2/sites-available/ с именем form.devel.conf
2. В директиве ServerName измените значение на form.devel
3. Отредактируйте DocumentRoot в соответсвии с папкой где расположены файлы проекта.
4. Переопределите директивы куда будут записываться логи: ErrorLog и CustomLog
5. Добавьте этот сайт в основную конфигурацию веб-сервера, что бы он заработал: в консоли напишите команду - a2ensite form.devel , после этого перезапустите сервер apache2
6. Добавьте в ваш файл hosts напротив 127.0.0.1 form.devel 
7. Измените значения в файлах "script.php" и "result.php" напротив комментариев для успешного подключения к БД. 
8. Создайте базу данных "form" с помощью phpmyadmin
9. Импортируйте таблицу "customers" из файла "form.sql" который находится в корне проекта перед этим выбрав БД "form".
10. Измените значения в файле "send.php" на свои для правильной работы PHPMailer и доставки письма при нажатии на кнопку "Отправить".

# Примечания

1. Иногда письмо при нажатии на кнопку "Отправить" не получается должным образом отправить адресату. Связано это со спам блоком от яндекса.
2. Результаты можно посмотреть перейдя на  "form.devel/result.php"
3. Пользователь который выбрал "Получить ответ на Email" после нажатия на кнопку "Отправить" получает одно уведомление, а тот кто сделал другой выбор получает другое уведомление.
5. При достижении 11 результатов в таблице "customers" на странице результатов создается ссылка на вторую страницу. Для изменения количества результатов измените число в файле "result.php" напротив комментария.


# Автор

Зайнуллин Марат
E-mail: zaynullin.m.f@gmail.com
Telegram @ggwpwcg