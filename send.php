<?php
use PHPMailer\PHPMailer\PHPMailer;

require_once 'PHPMailer/Exception.php';
require_once 'PHPMailer/PHPMailer.php';
require_once 'PHPMailer/SMTP.php';

$mail = new PHPMailer(true);

$alert = '';

if(isset($_POST['submit'])){
  $name = $_POST['name'];
  $email = $_POST['email'];
  $message = $_POST['message'];
  $category = $_POST['category'];

  try{
    $mail->isSMTP();
    $mail->CharSet = "UTF-8";
    $mail->Host = 'smtp.yandex.ru'; // Измените на свои значения
    $mail->SMTPAuth = true;
    $mail->Username = 'zaynullin.m.f'; // Измените на свои значения
    $mail->Password = 'zzzxnsqxypdhczfu'; // Измените на свои значения
    $mail->SMTPSecure = 'ssl';
    $mail->Port = '465'; // Измените на свои значения

    $mail->setFrom('zaynullin.m.f@yandex.ru', 'Отдел поддержки клиентов form.devel'); // Измените на свои значения
    $mail->addAddress('zaynullin.m.f@gmail.com'); // Измените на свои значения

    $mail->IsHTML(true);
    $mail->Subject = "Новое обращение от ".$name;
    $mail->Body = "
    <b>Имя:</b> $name<br>
    <b>Почта:</b> $email<br><br>
    <b>Категория товара:</b> $category<br>
    <b>Текст обращения:</b><br>$message
    ";

    $mail->send();
    $alert = '<div class="alert alert-success mb-3">
                 <span>Письмо успешно отправлено!</span>
                </div>';
  } catch (Exception $e){
    $alert = '<div class="alert alert-danger mb-3">
                <span>Мы получили Ваше обращение, но письмо по каким-то причинам не отправилось. Обратитесь к администратору.</span>
              </div>';
  }
}
?>
      