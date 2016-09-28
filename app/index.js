require('bootstrap-loader');

require('./styles/styles.scss');
require('./app.tag');

riot.mount('*');
riot.route.start(true);
