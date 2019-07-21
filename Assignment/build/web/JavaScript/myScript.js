
var objProduct = [
    "thiên thanh",
    "shop", "thời trang", "giày dép", "quần áo", "mắt kính"
];
function search() {
    var inp = document.getElementById('inp').value;

    for (var i = 0; i < objProduct.length; i++) {
        // check is user input matches username and password of a current index of the objPeople array
        if (inp === objProduct[i]) {
            alert("Đã tim thấy");
            // stop the function if this is found to be true
            //document.getElementById("login").innerHTML = objPeople[i].username + " loged in !!!";
            return;
        }
    }
    alert("Không tìm thấy");
}

var objPeople = [
    {// Object @ 0 index
        username: "nam1",
        password: "123456"
    },
    {// Object @ 1 index
        username: "nam2",
        password: "123456"
    },
    {// Object @ 2 index
        username: "nam3",
        password: "123456"
    }
];

function getInfo() {
    var username = document.getElementById('username').value;
    var password = document.getElementById('password').value;
    for (var i = 0; i < objPeople.length; i++) {
        // check is user input matches username and password of a current index of the objPeople array
        if (username === objPeople[i].username && password === objPeople[i].password) {
            window.alert(username + " is logged in!!!");
            // stop the function if this is found to be true
            document.getElementById("login").innerHTML = objPeople[i].username + " loged in !!!";
            return;
        }
    }
    window.alert("incorrect username or password");
}

function hrefCall() {
    document.getElementById('GoToHref').click();
    getInfor2();
}

function triggerMe() {
    var DelayhrefCall;
    //include all code for what triggerMe() must do, then as the last line add
    DelayhrefCall = window.setTimeout(hrefCall, 500);
    //500 millisecond delay, change time as desired
}

function getInfo2() {
    var username = document.getElementById('account_su').value;
    //window.alert(username);
    document.getElementById("login").innerHTML = username + " loged in !!!";
}

function signUp() {
    window.open("dangki.html", "_blank");
}