$(function(){
  show_chart();
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

function show_chart()
{

  $.ajax({
      dataType: 'json',
      type: "get",
      url: "/users/timechart/"
  }).done(process_activity);

  return false;
}

function process_activity(timedata)
{

  $('#chart').empty();

  Morris.Line({
    element: 'chart',
    data: timedata,
    xkey: 'est_wait',
    ykeys: ['act_wait'],
    labels: ['Value']
  });
}











