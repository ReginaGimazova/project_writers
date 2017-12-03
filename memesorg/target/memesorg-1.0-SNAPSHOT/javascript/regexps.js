function validateEmail(email) {
    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}

function validateLogin(login) {
    var re = /[a-zA-z0-9]{5,}/;
    return re.test(login);
}

function validatePassword(password) {
    var re = /[a-zA-z0-9!@#$%^&*(){}]{6,}/;
    return re.test(password);
}

function validateName(name) {
    var re = /[a-zA-zа-яА-я]{5,}/;
    return re.test(name);
}