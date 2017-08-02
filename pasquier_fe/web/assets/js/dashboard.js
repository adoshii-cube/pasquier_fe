/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
    fetchData();

    $("#buttonReset").on("click", function () {
//        var buttonId = $(this).attr("id");
        dc.filterAll("1");
        dc.redrawAll("1");
    });
});

function fetchData() {

    jQuery.ajax({
        type: "POST",
        url: "dashboardJSON.jsp",
//        data: postData,
        async: false,
        success: function (resp) {
            var response = JSON.parse(resp);
            createCrossFilter(response);
        }});
}

function createCrossFilter(jArray) {
//    var data = $.parseJSON(jArray);
    var cf = crossfilter(jArray);


    var metricJd = cf.dimension(function (d) {
        return d["jd"];
    });
    var metricGroupJd = metricJd.group();
    createDropdownUsingDc("dropdown_jd", metricJd, metricGroupJd, "1");


    var metricStatus = cf.dimension(function (d) {
        return d["status"];
    });
    var metricGroupStatus = metricStatus.group().reduce(
            function (p, v) {
                p += +v.value;
                return p;
            },
            function (p, v) {
                p -= +v.value;
                return p;
            },
            function () {
                return 0;
            }
    );
    createPieChartUsingDc("chartPie_Status", metricStatus, metricGroupStatus, "1");


    var metricLocation = cf.dimension(function (d) {
        return d["location"];
    });
    var metricGroupLocation = metricLocation.group().reduce(
            function (p, v) {
                p += +v.value;
                return p;
            },
            function (p, v) {
                p -= +v.value;
                return p;
            },
            function () {
                return 0;
            }
    );
    createBarChartUsingDc("chartBar_Location", metricLocation, metricGroupLocation, "1");

    var metricExperience = cf.dimension(function (d) {
        return d["experience"];
    });
    var metricGroupExperience = metricExperience.group().reduce(
            function (p, v) {
                p += +v.value;
                return p;
            },
            function (p, v) {
                p -= +v.value;
                return p;
            },
            function () {
                return 0;
            }
    );
    createBarChartUsingDc("chartBar_Experience", metricStatus, metricGroupExperience, "1");

    var metricQualification = cf.dimension(function (d) {
        return d["qualification"];
    });
    var metricGroupQualification = metricQualification.group().reduce(
            function (p, v) {
                p += +v.value;
                return p;
            },
            function (p, v) {
                p -= +v.value;
                return p;
            },
            function () {
                return 0;
            }
    );
    createPieChartUsingDc("chartPie_Qualification", metricQualification, metricGroupQualification, "1");

}

function createDropdownUsingDc(chartId, cfDimension, cfGroup, quesId) {
    var chart = dc.selectMenu("#" + chartId, quesId);
    chart
            .dimension(cfDimension)
            .group(cfGroup)
            .controlsUseVisibility(true);
    chart.render();
}

function createPieChartUsingDc(chartId, cfDimension, cfGroup, quesId) {
    var chart = dc.pieChart("#" + chartId, quesId);
    chart
            .width(400)
            .height(200)
            .transitionDuration(1000)
            .dimension(cfDimension)
            .group(cfGroup)
            .externalLabels(10)
            .externalRadiusPadding(25)
            .ordinalColors(['#ef5350', '#EC407A', '#AB47BC', '#7E57C2', '#5C6BC0', '#42A5F5', '#26C6DA', '#26A69A', '#66BB6A', '#9CCC65', '#D4E157', '#FFEE58', '#FFCA28', '#FFA726', '#FF7043'])
            .label(function (d) {
                return d.key + ": " + d3.round((d.value / d3.sum(cfGroup.all(), function (d) {
                    return d.value;
                })) * 100, 1) + "%";
            });
//        chart.filter = function () {};
//    plotResponsiveCharts(chartId);
    chart.render();
}

function createBarChartUsingDc(chartId, cfDimension, cfGroup, quesId) {
    var chart = dc.barChart("#" + chartId, quesId);
    chart
            .width(400)
            .height(200)
            .transitionDuration(1000)
            .margins({top: 20, bottom: 30, left: 40, right: 20})
            .dimension(cfDimension)
            .group(cfGroup)
//            .yAxisLabel("Count")
            .elasticY(true)
//            .showYAxis(false)
            .x(d3.scale.ordinal().domain(cfDimension)) // Need the empty val to offset the first value
            .xUnits(dc.units.ordinal) // Tell Dc.js that we're using an ordinal x axis
            .ordinalColors(['#7986CB'])
//            .label(function (d) {
//                return d.key + " = " + d.value;
//            })
            .centerBar(false);

    chart.on("renderlet", function (chart) {
        var gLabels = chart.select(".labels");
        if (gLabels.empty()) {
            gLabels = chart.select(".chart-body").append('g').classed('labels', true);
        }

        var gLabelsData = gLabels.selectAll("text").data(chart.selectAll(".bar")[0]);
        gLabelsData.exit().remove(); //Remove unused elements

        gLabelsData.enter().append("text"); //Add new elements

        gLabelsData
                .attr('text-anchor', 'middle')
                .attr('fill', 'white')
                .text(function (d) {
                    return d3.select(d).data()[0].data.value;
                })
                .attr('x', function (d) {
                    return +d.getAttribute('x') + (d.getAttribute('width') / 2);
                })
                .attr('y', function (d) {
                    return +d.getAttribute('y') + 15;
                })
                .attr('style', function (d) {
                    if (+d.getAttribute('height') < 18)
                        return "display:none";
                });
    });
    chart.render();
//    plotResponsiveCharts(chartId);
}

function plotResponsiveCharts(chartId) {
    document.getElementById(chartId).style.display = 'none';
    document.getElementById(chartId).style.display = 'block';

    dc.renderAll("1");
}