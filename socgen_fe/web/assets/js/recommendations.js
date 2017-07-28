/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {

    var slider = $("#slider").slideReveal({
        trigger: $("#trigger2"),
//        position: "left",
//        width: "18%",
        push: true,
        top: 64,
        show: function (slider, trigger) {
            $("#trigger2 i").text("keyboard_arrow_left");
//            setTimeout(function () {
            $("main").css("max-width", "" + $(window).width() - $("#slider").width() + "px");
//            }, 50);
        },
        hide: function (slider, trigger) {
            $("#trigger2 i").text("keyboard_arrow_right");
            $("main").css("max-width", "100%");
        }
    });

    slider.slideReveal("show");

    $(".mainContainer").css("height", "" + window.innerHeight - $("header").height() - 48 + "px");

    var heightTable = $(".mainContainer").height() - $(".jdDropdownContainer").height() - $(".tableTitle").height() - 108;
    $("#tableContainer table tbody").css("max-height", heightTable);


    $('#viewJD').magnificPopup({
        items: {
            src: '.jdContainer',
            type: 'inline'
        },
        midClick: true, // allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source.
        callbacks: {
            beforeOpen: function () {
                var optionValue = fetchOptionValue("dropdown_jd");
                var pathToPdf;
                if (optionValue === "jd1") {
                    pathToPdf = "JD1_MSBI.pdf";
                } else if (optionValue === "jd2") {
                    pathToPdf = "JD2_CorporateLoan.pdf";
                }
                $(".jdContainer").css("height", window.innerHeight - 32);
                var heightJD = $(".jdContainer").height();
                $(".jdContainer").html('<object data = "' + pathToPdf + '" type = "application/pdf" width = "100%" height="' + heightJD + '">alt: <a href="' + pathToPdf + '">' + pathToPdf + '</a></object>');
            },
            open: function () {

            },
            close: function () {
//                $("#relationshipNetwork").css("height", "300px");
//                $("#legendContainer").css("max-height", "220px");
            }
        }
    });


    var heightResume = $(".mainContainer").height() - $("#keywordsContainer").height() - 64;

    $(".link").on("click", function () {
        $("#pdfViewerContainer").empty();
        var url = $(this).find("a").attr("href");
        $("#pdfViewerContainer").html('<object data = "' + url + '" type = "application/pdf" width = "100%" height="' + heightResume + '">alt: <a href="' + url + '>' + url + '</a></object>');

        $("#keywordsContainer").css("display", "block");
        return false;
    });

});

function fetchOptionValue(dropdownName) {
    var optionValue = "";
    var selectedOption = $("#" + dropdownName).parent().find(".mdl-selectfield__box-value").text();
    optionValue = $('#' + dropdownName + ' option').filter(function () {
        return $(this).html() === selectedOption;
    }).val();

    return optionValue;
}