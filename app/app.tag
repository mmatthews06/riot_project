require('./tags/nav.tag');
require('./tags/albums.tag');
require('./tags/users.tag');

<app>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <nav></nav>
        <div id="view">
        </div> <!-- #view -->
      </div> <!-- .col-md-12 -->
    </div> <!-- .row -->

    var r = riot.route.create();
    r('/comments', comments);
    r('/albums',   albums);
    r('/photos',   photos);
    r('/posts',    posts);
    r('/users',    users);
    r('', function() { riot.route('//users') } );

    function albums() {
      riot.mount('#view', 'albums');
    }
    function comments() {
      console.log('Comments...');
    }
    function photos() {
      console.log('Photos...');
    }
    function posts() {
      console.log('Posts...');
    }
    function users() {
      riot.mount('#view', 'users');
    }
</app>
