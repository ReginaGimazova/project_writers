<!DOCTYPE html>
<html lang="en">
<#import "head.ftl" as head>
<@head.head title="Вход" extra_styles=["auth.css"] extra_scripts=["regexps.js", "auth_form_validation.js"]/>
<body>
<div class="header">
    <a class="brand" href="/">Just Write!</a>
</div>
<div class="content">
    <div>
    <h1 class="title">Вход</h1>
    </div>
    <div class="auth_form">
        <form action="/auth" method="post" onsubmit="return validateAuth()">
            <div class="form-group">
                <label>
                <input id="login" type="text" name="login" class="form-control input-text" placeholder="Логин" autofocus/>
                </label>
            </div>
            <div class="error-message form-group" id="loginerror"></div>

            <div class="form-group">
                <label>
                    <input id="password" type="password" name="password" class="form-control input-text" placeholder="Введите пароль"/>
                </label>
            </div>
            <div class="error-message form-group" id="passworderror"></div>
            <div class="form-group">
            <input type="submit" class="btn btn-primary">
            </div>
        </form>
    </div>
    <div>
    <img src="../static/media/ORline.png" class="sep_line">
    </div>
    <div>
    <a href="/signup"><button class="sign_up_button btn btn-outline-primary">Зарегистрироваться</button></a>
    </div>
</div>
</body>
</html>