/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {
//    getRecommendations();
    var slider = $("#slider").slideReveal({
        trigger: $("#trigger2"),
//        position: "left",
//        width: "18%",
        push: true,
        top: 64,
        show: function (slider, trigger) {
            $("#trigger2 i").text("keyboard_arrow_left");
            $("main").css("max-width", "" + $(window).width() - $("#slider").width() + "px");
            $("#tableContainer table thead").css("width","");
        },
        hide: function (slider, trigger) {
            $("#trigger2 i").text("keyboard_arrow_right");
            $("main").css("max-width", "100%");
            $("#tableContainer table thead").css("width","calc(100% - 32px)");
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
                var optionValue = fetchOptionText("dropdown_jd");
                var pathToPdf = "data/uploaded_jd/" + optionValue + ".pdf";
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

    $(document).on("click", ".link", function (ev) {
//    $(".link").on("click", function (ev) {

        ev.stopImmediatePropagation();
        ev.preventDefault();

        $("#pdfViewerContainer").empty();
        var url = $(this).find("a").attr("href");
        $("#pdfViewerContainer").html('<object data = "' + url + '" type = "application/pdf" width = "100%" height="' + heightResume + '">alt: <a href="' + url + '>' + url + '</a></object>');
        var id = $(this).parent().attr("id").split('_')[1];

        $("#keywordsContainer .mdl-chip__text").empty();
        $(".hiddenRow").css("display", "none");
        var keywords = $('#keywords_' + id).val().split(',');
        var clone = $('#keywordChip').clone(true).attr('class', 'mdl-chip hiddenRow');

        for (var i = 0; i < keywords.length; i++) {
            if (keywords[i] !== "") {
                var clone = $('#keywordChip').clone(true).attr('class', 'mdl-chip hiddenRow');
                clone.find('.mdl-chip__text').html(keywords[i]);
                clone.appendTo('#keywordsContainer');
            }
        }
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

function fetchOptionText(dropdownName) {
    var selectedOption = $("#" + dropdownName).parent().find(".mdl-selectfield__box-value").text();
    return selectedOption;
}

function getRecommendations() {
    var jd = fetchOptionText("dropdown_jd");
    var location = fetchOptionText("dropdown_location");
    var experience = fetchOptionText("dropdown_experience");
    var qualification = fetchOptionText("dropdown_qualification");

    var jsonObj = {
        "jd": jd,
        "location": location,
        "experience": experience,
        "qualification": qualification
    };
    var postData = {'jsonObj': JSON.stringify(jsonObj)};
    jQuery.ajax({
        type: "POST",
        url: "fetchRecommendations.jsp",
        data: postData,
        async: false,
        success: function (resp) {
//            var response = JSON.parse(resp);
            $(".tableTitle").css("visibility", "visible");
            $("#tableContainer").html(resp);
            var heightTable = $(".mainContainer").height() - $(".jdDropdownContainer").height() - $(".tableTitle").height() - 108;
            $("#tableContainer table tbody").css("max-height", heightTable);
            componentHandler.upgradeDom('MaterialButton');
            componentHandler.upgradeDom('MaterialRipple');
            componentHandler.upgradeDom('MaterialTooltip');
        }});
}