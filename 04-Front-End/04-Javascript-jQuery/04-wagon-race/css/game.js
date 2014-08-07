function foward(player_id) {
  var row = $(player_id);
  var active = row.find('.active');
  var next = active.next();

  active.removeClass('active');
  next.addClass('active');

  if (next.is(':last-child')) {
    var player_name = player_id.match(/#(.+)/(1))
    alert(player_name + "wins!");
    reset();

  }
}


$(document).ready(function() {
  $(document).on('keyup',function(event) {


    if (e.keyCode == 81) {
      // player1
    }

    else if (e.keyCode == 80) {
      forward('player2');
    }
  });
});