function getRequestWithConfirmation(url, confirmText){
    if (confirm(confirmText)){
        $.ajax({
            url: url,
            type: "get",
            success: function(data, status, xhr){
                location.reload();
            },
            error: function(error){
                alert(error);
            }
        });
    }
}

function getRequest(url) {
    $.ajax({
        url: url,
        type: "get",
        success: function(data, status, xhr){
            location.reload();
        },
        error: function(error){
            alert(error);
        }
    });
}

function postRequest(url, data) {
    $.ajax({
        url: url,
        type: "post",
        data: data,
        success: function(data, status, xhr){
            location.reload();
        },
        error: function(xhr, status, err){
            document.getElementById("error").innerHTML = xhr.responseText;
            alert(status);
        }
    });
}

function passwordToggleClick() {
    $(".toggle-password").toggleClass("fa-eye fa-eye-slash");
    var input = $('input[name = "password"]');
    if (input.attr("type") == "password") {
        input.attr("type", "text");
    } else {
        input.attr("type", "password");
    }
};

var linkToText = {
    users: "All Users",
    students: "Student Portal",
    staffs: "Staff Portal",
    teachers: "Teacher Portal",
    academics: "Academic Portal"
};

function checkValidDate(dateString) {
    // Format: yyyy-mm-dd
    var regex_date = /^\d{4}\-\d{1,2}\-\d{1,2}$/;
    if (!regex_date.test(dateString)) {
        return false;
    }
    return true;
}

function titleCase(text) {
    if (checkValidDate(text)) {
        return text;
    }
    var words = text.split("-");
    for (let i = 0; i < words.length; i++) {
        words[i] = words[i][0].toUpperCase() + words[i].slice(1);
    }
    return words.join(" ");
}

function getBreadcrumb(url, currentLink, isLast) {
    var text = currentLink;
    if (currentLink in linkToText) {
        text = linkToText[currentLink];
    }
    else {
        text = titleCase(text);
    }
    if (!isLast) {
        return '\n<li class="breadcrumb-item active"><a href="' + url + '">' + text + '</a></li>'
    }
    return '\n<li class="breadcrumb-item active" aria-current="page">' + text + '</li>'
}

$(".breadcrumb").html($('<li class="breadcrumb-item active"><a href="/">Home</a></li>'));
var pathArray = window.location.pathname.split('/');
var url = "";
for (i = 1; i < pathArray.length; i++) {
    var currentLink = pathArray[i];
    url += "/" + currentLink;
    var isLast = 0;
    if(i == pathArray.length - 1) {
        isLast = 1;
    }
    $(".breadcrumb").append(getBreadcrumb(url, currentLink, isLast));
};
