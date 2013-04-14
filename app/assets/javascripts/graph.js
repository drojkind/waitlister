$(function(){
  show_chart();
  $('#forms').on('click','input[type=submit]', stop_timer_and_submit);

  datetime = $('.datetime');
  datetime_update();
  setInterval(datetime_update, 8000);
  // set up event listener, when someone clicks on input of type submit inside of class "reservation", do this js function that will prevent default, stop timer, then submit the form
  $('.reservation').on('click','input[type=submit]', stop_timer_and_submit)
  // $('input[type=submit]')
});
var datetime = null;
var date = null;

function stop_timer_and_submit(e)
{
  e.preventDefault();
}



var datetime_update = function() {
  $.each($('.datetime:not(.stopped)'), function(i, el){
  // $.each($('.datetime.not(.stopped)'), function(i, el){

    var created = Date.parse($(this).data('created'));
    var moment_created = moment(created).format("dddd, MMMM Do YYYY, h:mm:ss a");
    $(el).html(moment(created).fromNow(false));
  })
};

function stop_timer_and_submit(e)
{

  e.preventDefault();
  // add stopped class to the td
  $('.reservation').children().addClass('stopped');
  $(this).parent().siblings('form').submit();
}

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
    labels: ['Actual Wait']
  });
}











