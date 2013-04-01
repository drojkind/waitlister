$(function(){
  show_chart();
});

function show_chart()
{

  $.ajax({
      dataType: 'script',
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
    xkey: 'est_time',
    ykeys: ['act_time'],
    labels: ['Value']
  });
}














