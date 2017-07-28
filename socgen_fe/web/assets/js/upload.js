/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {

    $("#uploadJd").on("change", function () {
        var names = "";
        $(this.files).each(function () {
            names = names + $(this)[0].name + ",";
        });
        $("#uploadJdFiles").val(names);
    });
    $("#uploadJdSubmit").on("click", function () {
        var input = document.getElementById('uploadJd');
        if (input.files.length === 0) {
            snackbarMsg(1);
        } else {
            var files = $('#uploadJd')[0].files; //where files would be the id of your multi file input
            for (var i = 0, f; f = files[i]; i++) {
                var myFormData = new FormData();
                myFormData.append("file_" + i, f);
            }
            $.ajax({
                url: "uploadJd.jsp",
                type: 'POST',
                data: myFormData,
                contentType: false,
                cache: false,
                processData: false,
                success: function (resp) {
                    snackbarMsg(parseInt(resp.trim()));
                },
                error: function () {
                    snackbarMsg(4);
                }
            });
        }
    });

});


$("#uploadResume").on("change", function () {
    var names = "";
    $(this.files).each(function () {
        names = names + $(this)[0].name + ",";
    });
    $("#uploadResumeFiles").val(names);
});

$("#uploadResumeSubmit").on("click", function () {
    var input = document.getElementById('uploadResume');
    if (input.files.length === 0) {
        snackbarMsg(1);
    } else {
        var files = $('#uploadResume')[0].files; //where files would be the id of your multi file input
        for (var i = 0, f; f = files[i]; i++) {
            var myFormData = new FormData();
            myFormData.append("file_" + i, f);
        }
        $.ajax({
            url: "uploadFile.jsp",
            type: 'POST',
            data: myFormData,
            contentType: false,
            cache: false,
            processData: false,
            success: function (resp) {
                snackbarMsg(parseInt(resp.trim()));
            },
            error: function () {
                snackbarMsg(4);
            }
        });
    }
});


function snackbarMsg(flag) {
    var snackbarContainer = document.querySelector('#snackbar');
    if (flag === 1) {
        var data = {message: 'Please select a file to upload'};
    } else if (flag === 2) {
        var data = {message: 'File uploaded successfully'};
    } else if (flag === 3) {
        var data = {message: 'Invalid file contents. Please try again'};
    } else if (flag === 4) {
        var data = {message: 'Failed to upload file. Please try again'};
    }
    'use strict';
    snackbarContainer.MaterialSnackbar.showSnackbar(data);
}