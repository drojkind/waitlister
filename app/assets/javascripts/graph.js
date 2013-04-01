$(function(){

});
var datetime = null;
var date = null;


var datetime_update = function() {
  // date = moment(new Date());
  // datetime.html(date.format('mm ss'));
  $.each($('.datetime'), function(i, el){
    var created = Date.parse($(this).data('created'));
    var moment_created = moment(created).format("dddd, MMMM Do YYYY, h:mm:ss a");
    $(el).html(moment(created).fromNow(false));
  })
};

$(document).ready(function() {
  datetime = $('.datetime');
  datetime_update();
  setInterval(datetime_update, 8000);
});

function morris()
{

new Morris.Line({
  // ID of the element in which to draw the chart.
  element: 'chart',
  // Chart data records -- each entry in this array corresponds to a point on
  // the chart.
  data: [
    { year: '2008', value: 20 },
    { year: '2009', value: 10 },
    { year: '2010', value: 5 },
    { year: '2011', value: 5 },
    { year: '2012', value: 20 }
  ],
  // The name of the data record attribute that contains x-values.
  xkey: 'year',
  // A list of names of data record attributes that contain y-values.
  ykeys: ['value'],
  // Labels for the ykeys -- will be displayed when you hover over the
  // chart.
  labels: ['Value']
});

}













