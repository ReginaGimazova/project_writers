function validateRegistration()
{
    var login = document.getElementById('login').value;
    var password = document.getElementById('password').value;
    var passwordRepeat = document.getElementById('password-repeat').value;
    var email = document.getElementById('email').value;
    var date = document.getElementById('birthday').value;
    var name = document.getElementById('name').value;
    return checkLogin(login)&&checkPassword(password,passwordRepeat)&&checkName(name)&&checkEmail(email)&&checkDate(date);

}

function checkLogin(login) {
    var errorText = document.getElementById('loginerror');
    var loginError = "";
    if(login.length == 0){
        loginError = 'Это поле не может быть пустым';
        errorText.innerHTML = loginError;
        // alert(loginError);
        return false;
    }else {
        if (login.length < 5){
            loginError = 'Логин слишком короткий';
            errorText.innerHTML = loginError;
            return false;
        }
        if (!validateLogin(login)){
            loginError = 'Логин содержит недопустимые символы';
            errorText.innerHTML = loginError;
            // alert(loginError);
            return false;
        }
    }
    errorText.innerHTML = "";
    return true
}

function checkPassword(password, passwordRepeat) {
    var errorText1 = document.getElementById('passworderror');
    var errorText2 = document.getElementById('passwordrepeaterror');
    var passwordError;
    if(password.length == 0){
        passwordError = 'Это поле не может быть пустым';
        errorText1.innerHTML = passwordError;
        // alert(passwordError);
        return false;
    }else {
        if (password.length < 5){
            passwordError = 'Пароль слишком короткий';
            errorText1.innerHTML = passwordError;
            return false;
        }
        if (!validatePassword(password)){
            passwordError = 'Пароль содержит недопустимые символы';
            errorText1.innerHTML = passwordError;
            return false;
        }
        else if(password != passwordRepeat ){
            passwordError = "Введенные пароли не совпадают";
            errorText1.innerHTML = "";
            errorText2.innerHTML = passwordError;
            return false;
        }
    }
    errorText1.innerHTML = "";
    errorText2.innerHTML = "";
    return true
}

function checkEmail(email) {
    var errorText = document.getElementById('emailerror');
    var emailError;
    if(email.length == 0){
        emailError = 'Это поле не может быть пустым';
        errorText.innerHTML = emailError;
        // alert(emailError);
        return false;
    }else {
        if (!validateEmail(email)){
            emailError = 'Адрес электронной почты не прошел валидацию';
            errorText.innerHTML = emailError;
            // alert(emailError);
            return false;
        }
    }
    errorText.innerHTML = "";
    return true;
}

function checkDate(date) {
    var errorText = document.getElementById('dateerror');
    var dateError;
    if(date.length == 0){
        dateError = "Это поле не может быть пустым";
        errorText.innerHTML = dateError;
        // alert(dateError);
        return false;
    }
    errorText.innerHTML = "";
    return true;
}

function checkName(name) {
    var errorText = document.getElementById('nameerror');
    var nameError;
    if(name.length == 0){
        nameError = "Это поле не может быть пустым";
        errorText.innerHTML = nameError;
        // alert(dateError);
        return false;
    }else if(!validateName(name)){
        nameError = "Поле содержит недопустимые символы";
        errorText.innerHTML = nameError;
        return false;
    }
    errorText.innerHTML = "";
    return true;
}