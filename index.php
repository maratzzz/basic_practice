<?php include 'send.php'; ?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
    <title>Связаться с нами</title>
</head> 
<body>
    <form action="script.php" method="POST" id="form">
        <div class="container mt-5"> 
            <?php if(isset($_POST['subscribe']) && $_POST['subscribe'] == 'yes') : ?>
            <div class="alert alert-success mb-3" role="alert">
                Спасибо за Ваше обращение! Мы постараемся ответить на него в течении 24 часов.
            </div>
            <?php elseif (isset($_POST['subscribe']) && $_POST['subscribe'] == 'no') : ?>
            <div class="alert alert-success mb-3" role="alert">
                 Спасибо за обращение! Для нас важен каждый Ваш отзыв.
             </div>
             <?php endif;?>
             <?php echo $alert; ?>
            <h4 class="mb-3">Обратная связь с нами</h4>
            <div class="row mb-3">
                <div class="col-sm">
                    <input type="email" class="form-control" name="email" id="email" aria-describedby="emailHelp"
                        placeholder="Ваш Email адрес" required>
                    <div class="form-check">
                        <input class="form-check-input" type="hidden" name="subscribe" value="no" id="FormSubsribe">
                        <input class="form-check-input" type="checkbox" name="subscribe" value="yes" id="FormSubsribe">
                        <label class="form-check-label" for="FormSubsribe">Получить ответ на Email</label>
                    </div>
                </div>
                <div class="col-sm">
                    <input class="form-control" type="text" name="name" id="name" placeholder="Ваше имя" required>
                </div>
            </div>
            <div class="mb-3">
                Выберите категорию:
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="category" value="shoes" id="CategoryShoes">
                    <label class="form-check-label" for="CategoryShoes">Обувь</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="category" value="jackets" id="CategoryJackets"
                        checked>
                    <label class="form-check-label" for="CategoryJackets">Куртки</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="category" value="pants" id="CategoryPants"
                        checked>
                    <label class="form-check-label" for="CategoryPants">Штаны</label>
                </div>
            </div>
            <div class="mb-3">
                <select class="form-select"  aria-label="select example" name="theme" required>
                    <option selected value="">Тема вашего обращения</option>
                    <option value="quality">Качество</option>
                    <option value="price">Цены</option>
                    <option value="refund">Возврат</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="FormMessage" class="form-label">Текст вашего обращения:</label>
                <textarea class="form-control" name="message" id="FormMessage" rows="6"
                    placeholder="Опишите проблему или ваше пожелание" required></textarea>
                </div>
                <div class="mb-3">
                    <label for="FormFile" class="form-label">Прикрепите фото или файл</label>
                    <input class="form-control" type="file" name="file" id="FormFile">
                </div>
            <button type="submit" class="btn btn-success" value="Send" name="submit">Отправить форму</button>
            <input type="reset" class="btn btn-danger" value="Сбросить введенные данные">
        </div>
    </form>
    <script type="text/javascript">
    if(window.history.replaceState){
      window.history.replaceState(null, null, window.location.href);
    }
    </script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>