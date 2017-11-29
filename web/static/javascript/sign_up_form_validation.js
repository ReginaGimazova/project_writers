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
        loginError = 'Login field cannot be empty';
        errorText.innerHTML = loginError;
        // alert(loginError);
        return false;
    }else {
        if (login.length < 5){
            loginError = 'Login is too short';
            errorText.innerHTML = loginError;
            return false;
        }
        if (!validateLogin(login)){
            loginError = 'Login is not valid';
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
        passwordError = 'Password field cannot be empty';
        errorText1.innerHTML = passwordError;
        // alert(passwordError);
        return false;
    }else {
        if (password.length < 5){
            passwordError = 'Password is too short';
            errorText1.innerHTML = passwordError;
            return false;
        }
        if (!validatePassword(password)){
            passwordError = 'Password contains invalid characters';
            errorText1.innerHTML = passwordError;
            return false;
        }
        else if(password != passwordRepeat ){
            passwordError = "Passwords do not match";
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
        emailError = 'Email field cannot be empty';
        errorText.innerHTML = emailError;
        // alert(emailError);
        return false;
    }else {
        if (!validateEmail(email)){
            emailError = 'Email is not valid';
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
        dateError = "Date field can not be empty";
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
        nameError = "Name field can not be empty";
        errorText.innerHTML = nameError;
        // alert(dateError);
        return false;
    }else if(!validateName(name)){
        nameError = "Name not valid";
        errorText.innerHTML = nameError;
        return false;
    }
    errorText.innerHTML = "";
    return true;
}