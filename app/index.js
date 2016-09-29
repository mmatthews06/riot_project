require('bootstrap-loader');

require('./styles/styles.scss');
require('./app.tag');

riot.mount('app');
riot.route.start(true);

$('.nav li').click(function(e) {
  $('.nav li.active').removeClass('active');
  $(this).addClass('active');
});
