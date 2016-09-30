require('bootstrap-loader');

require('./styles/styles.scss');
require('./app.tag');
require('./tags/nav.tag');

riot.mount('nav');
riot.mount('app');
riot.route.start(true);
