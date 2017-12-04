<#ftl encoding='UTF-8'>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Вход</title>
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="/styles/main.css">
    <link rel="stylesheet" href="/styles/auth.css">
    <script src=/javascript/regexps.js"></script>
    <script src=/javascript/auth_form_validation.js"></script>

</head>
<body>
<div class="header">
    <a class="brand" href="/profile">Just Write!</a>
</div>
<div class="content">
    <div>
    <h1 class="title">Вход</h1>
    </div>
    <div class="auth_form">
        <form action="/auth" method="post" onsubmit="return validateAuth()">
            <div class="form-group">
                <label>
                <input id="login" type="text" name="login" class="form-control input-text" placeholder="Логин"/>
                </label>
            </div>
            <div class="form-group">
                <label>
                    <input id="password" type="password" name="password" class="form-control input-text" placeholder="Введите пароль"/>
                </label>
            </div>
            <div class="form-group">
            <input type="submit" class="btn btn-primary">
            </div>
        </form>
    </div>
    <div>
    <img src="/media/ORline.png" class="sep_line">
    </div>
    <div>
    <a href="/sign_up"><button class="sign_up_button btn btn-outline-primary">Зарегистрироваться</button></a>
    </div>
</div>
</body>
</html>