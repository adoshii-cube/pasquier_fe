/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {

    $("#uploadJd").on("change", function () {
        var names = "";
        var count = 0;
        $(this.files).each(function () {
            if (count > 0) {
                names = names + ',';
            }
            names = names + $(this)[0].name;
            count++;
        });
        $("#uploadJdFiles").val(names);
    });
    $("#uploadJdSubmit").on("click", function () {
        var input = document.getElementById('uploadJd');
        if (input.files.length === 0) {
            snackbarMsg(1);
        } else {
            var files = $('#uploadJd')[0].files; //where files would be the id of your multi file input
            var myFormData = new FormData();
            for (var i = 0, f; f = files[i]; i++) {
                myFormData.append("file_" + i, f);
            }
            var myXhr;
            $.ajax({
                url: "uploadJd.jsp",
                type: 'POST',
                data: myFormData,
                contentType: false,
                cache: false,
                processData: false,
                xhr: function () {
                    myXhr = $.ajaxSettings.xhr();
                    if (myXhr.upload) {
                        myXhr.upload.addEventListener('progress', progressHandlingFunction, false);
                    }
                    return myXhr;
                },
                success: function (resp) {
                    $("#loader").css("visibility", "hidden");
                    $("#uploadJdFiles").val('');

                    snackbarMsg(parseInt(resp.trim()));
                },
                error: function () {
                    $("#loader").css("visibility", "hidden");
                    snackbarMsg(4);
                }
            });
        }
    });

});


$("#uploadResume").on("change", function () {
    var names = "";
    var count = 0;
    $(this.files).each(function () {
        if (count > 0) {
            names = names + ',';
        }
        names = names + $(this)[0].name;
        count++;
    });
    $("#uploadResumeFiles").val(names);
});

$("#uploadResumeSubmit").on("click", function () {
    ;
    var jdSelected = fetchOptionValue("dropdown_jdForResumeUpload");
    var input = document.getElementById('uploadResume');
    if (input.files.length === 0) {
        snackbarMsg(1);
    } else {
        var files = $('#uploadResume')[0].files; //where files would be the id of your multi file input
        var myFormData = new FormData();
        for (var i = 0, f; f = files[i]; i++) {
            myFormData.append(jdSelected + "_" + i, f);
        }
        var myXhr;
        $.ajax({
            url: "uploadFile.jsp",
            type: 'POST',
            data: myFormData,
            contentType: false,
            cache: false,
            processData: false,
            xhr: function () {
                myXhr = $.ajaxSettings.xhr();
                if (myXhr.upload) {
                    myXhr.upload.addEventListener('progress', progressHandlingFunction, false);
                }
                return myXhr;
            },
            success: function (resp) {
                $("#loader").css("visibility", "hidden");
                $("#uploadResumeFiles").val('');

                snackbarMsg(parseInt(resp.trim()));
            },
            error: function () {
                $("#loader").css("visibility", "hidden");
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
        var data = {message: 'Upload successful'};
    } else if (flag === 3) {
        var data = {message: 'Invalid file contents. Please try again'};
    } else if (flag === 4) {
        var data = {message: 'Failed to upload file. Please try again'};
    }
    'use strict';
    snackbarContainer.MaterialSnackbar.showSnackbar(data);
}


//document.querySelector('#loader').addEventListener('mdl-componentupgraded', function () {
//    this.MaterialProgress.setProgress(44);
//});

function progressHandlingFunction(e) { // ***** I mean here. **** //
    if (e.lengthComputable) {

        var max = e.total;
        var current = e.loaded;

        var Percentage = (current * 100) / max;
        console.log(Percentage);

//        progressBarUpdate(Math.round(Percentage));
        $("#loader").css("visibility", "visible");
        document.querySelector('#loader').MaterialProgress.setProgress(Math.round(Percentage));

        if (Percentage >= 100)
        {
            $("#loader").css("visibility", "hidden");
        }
    }
}

//function progressBarUpdate(value) {
//    $("#loader").css("visibility", "visible");
//    document.querySelector('#loader').MaterialProgress.setProgress(value);
//}

function fetchOptionValue(dropdownName) {
    var optionValue = "";
    var selectedOption = $("#" + dropdownName).parent().find(".mdl-selectfield__box-value").text();
    optionValue = $('#' + dropdownName + ' option').filter(function () {
        return $(this).html() === selectedOption;
    }).val();

    return optionValue;
}