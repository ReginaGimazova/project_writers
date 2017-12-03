<!DOCTYPE html>
<html lang="en">
<#import "head.ftl" as head>
<@head.head title="Регистрация" extra_styles=["sign_up.css"] extra_scripts=["regexps.js", "sign_up_form_validation.js"]/>
<body>
    <div class="header">
        <a class="brand" href="/">Just Write!</a>
    </div>
    <div class="content">
        <div>
            <h1 class="title">Регистрация нового пользователя</h1>
        </div>
        <div class="form">
            <form action="sign_up" method="post" onsubmit="return validateRegistration()">
                <div class="form-group">
                    <div class=" label">
                        <label for="login" class="col-form-label ">Логин</label></div>
                    <div class="">
                        <input type="text" id="login" name="login" class="form-control " autofocus>
                    </div>

                </div>
                <div class="error-message form-group" id="loginerror"></div>

                <div class="form-group">
                    <div class=" label">
                        <label for="password" class="col-form-label ">Пароль</label>
                    </div>
                    <div class="">
                        <input type="password" id="password" name="password" class="form-control ">
                    </div>
                </div>
                <div class="error-message form-group" id="passworderror"></div>
                <div class="form-group">
                    <div class=" label">
                        <label for="password-repeat" class="col-form-label ">Повторите пароль</label>
                    </div>
                    <div class="">
                        <input type="password" id="password-repeat" name="password-repeat" class="form-control ">
                    </div>
                </div>
                <div class="error-message form-group" id="passwordrepeaterror"></div>
                <div style="margin: 75px"></div>
                <div class="form-group">
                    <div class=" label">
                        <label for="name" class=" col-form-label ">Имя</label>
                    </div>
                    <div class="">
                        <input type="text" id="name" name="name" class="form-control ">
                    </div>
                </div>
                <div class="error-message form-group" id="nameerror"></div>
                <div class="form-group">
                    <div class=" label">
                        <label for="email" class="col-form-label ">Адрес электронной почты</label>
                    </div>
                    <div class="">
                        <input type="email" id="email" name="email" class="form-control ">
                    </div>
                </div>
                <div class="error-message form-group" id="emailerror"></div>
                <div class="form-group">
                    <div class=" label">
                        <label for="birthday" class=" col-form-label ">Дата рождения</label>
                    </div>
                    <div class="">
                        <input type="date" id="birthday" name="birthday" class="form-control ">
                    </div>
                </div>
                <div class="error-message form-group" id="dateerror"></div>
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