require('bootstrap-loader');

require('./styles/styles.scss');
require('./app.tag');

riot.mount('app');
riot.route.start(true);
