<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Регистрация</title>
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="/../css/main.css">
    <link rel="stylesheet" href="/../css/sign_up.css">
</head>
<body>
    <div class="header">
        <a class="brand" href="/">Just Write!</a>
    </div>
    <div class="content">
        <div>
            <h1 class="title">Регистрация нового пользователя</h1>
        </div>
        <div class="form">
            <form name="sign_up_validation" siaction="sign_up" method="post">
                <div class="form-group">
                    <div class=" label">
                        <label for="login" class="col-form-label ">Логин</label></div>
                    <div class="">
                        <input type="text" id="login" name="login" class="form-control ">
                    </div>

                </div>
                <div class="form-group">
                    <div class=" label">
                        <label for="password" class="col-form-label ">Пароль</label>
                    </div>
                    <div class="">
                        <input type="password" id="password" name="password" class="form-control ">
                    </div>
                </div>
                <div class="form-group">
                    <div class=" label">
                        <label for="password-repeat" class="col-form-label ">Повторите пароль</label>
                    </div>
                    <div class="">
                        <input type="password" id="password-repeat" name="password-repeat" class="form-control ">
                    </div>
                </div>
                <div style="margin: 75px"></div>
                <div class="form-group">
                    <div class=" label">
                        <label for="name" class=" col-form-label ">Имя</label>
                    </div>
                    <div class="">
                        <input type="text" id="name" name="name" class="form-control ">
                    </div>
                </div>
                <div class="form-group">
                    <div class=" label">
                        <label for="email" class="col-form-label ">Адрес электронной почты</label>
                    </div>
                    <div class="">
                        <input type="email" id="email" name="email" class="form-control ">
                    </div>
                </div>
                <div class="form-group">
                    <div class=" label">
                        <label for="birthday" class=" col-form-label ">Дата рождения</label>
                    </div>
                    <div class="">
                        <input type="date" id="birthday" name="birthday" class="form-control ">
                    </div>
                </div>
                <div class="form-group">
                    <div class=" label">
                        <label for="country" class=" col-form-label ">Страна</label>
                    </div>
                    <div class="">
                        <select id="country" name="country" class="form-control ">
                            <#list countries as country>
                                <option value="${country.id}">${country.name}</option>
                            </#list>
                        </select>
                    </div>
                </div>
                <!--<div class="form-group">-->
                    <!--<div class=" label">-->
                        <!--<label for="photo" class="col-form-label ">Фото</label>-->
                    <!--</div>-->
                    <!--<div class="">-->
                        <!--<input type="file" id="photo" name="photo" class="form-control ">-->
                    <!--</div>-->
                <!--</div>-->
                <div class="form-group buttons">
                    <div><input type="submit" value="Сохранить" class="btn btn-primary save-btn"></div>
                    <div><a href="/"><button class="btn btn-secondary cancel-btn">Отменить</button></a></div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>