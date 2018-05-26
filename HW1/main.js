function reservationDate() {
    var FirstDate = document.getElementById("startDate").value;
    var SecondDate = document.getElementById("endDate").value;
    var ToDate = new Date();

    if (new Date(SecondDate).getTime() <= new Date(FirstDate).getTime()) {
        alert("Start date must be bigger than end date");
        document.getElementById("endDate").valueAsDate = null;
        return false;
    }
    return true;
}

function leapYear(year) {
    return ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0);
}

function bornDateValidation() {
    var day = document.getElementById("day");
    var month = document.getElementById("month");
    var year = document.getElementById("year");
    var array30 = ["April", "June", "November", "September"];
    var array31 = ["January", "March", "May", "July", "August", "October", "Desember"];
    if (leapYear(parseInt(year))) {
        if (month.value === "February") {
            day.max = 29;
        }
    } else {
        if (month.value === "February") {
            day.max = 28;
        }
    }
    array30.forEach(function (item, i, arr) {
        if (month.value === i) {
            day.max = 30;
        }
    });
    array31.forEach(function (item, i, arr) {
        if (month.value === i) {
            day.max = 31;
        }
    });
}

var array = [];
var date = 1949;
for (var i = 0; date < 2000; i++) {
    array[i] = date + 1;
    date += 1;
}

var selectList = document.getElementById("year");

for (var i = 0; i < array.length; i++) {
    var option = document.createElement("option");
    option.setAttribute("value", array[i]);
    option.text = array[i];
    selectList.appendChild(option);
}