function validateAuth()
{
    var login = document.getElementById('login').value;
    var password = document.getElementById('password').value;
    return checkLogin(login)&&checkPassword(password);

}

function checkLogin(login) {
    var errorText = document.getElementById('loginerror');
    var loginError = "";
    if(login.length == 0){
        loginError = 'Введите логин';
        errorText.innerHTML = loginError;
        // alert(loginError);
        return false;
    }else {
        if (!validateLogin(login)){
            loginError = 'Логин слишком короткий или содержит недопустимые символы';
            errorText.innerHTML = loginError;
            // alert(loginError);
            return false;
        }
    }
    errorText.innerHTML = "";
    return true
}

function checkPassword(password) {
    var errorText = document.getElementById('passworderror');
    var passwordError;
    if(password.length == 0){
        passwordError = 'Введите пароль';
        errorText.innerHTML = passwordError;
        // alert(passwordError);
        return false;
    }else {
        if (!validatePassword(password)){
            passwordError = 'Пароль слишком короткий или содержит недопустимые символы';
            errorText.innerHTML = passwordError;
            return false;
        }

    }
    errorText.innerHTML = "";
    return true
}