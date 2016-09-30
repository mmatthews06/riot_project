require('user.tag');

<users>
  <ul class="list-group striped">
    <a href="#" class="list-group-item" each={ user in users }>
      <user user={ user }></user>
    </a> <!-- .list-group-item -->
  </ul> <!-- .list-goup -->

  <script>
  var self = this;

  $.ajax('https://jsonplaceholder.typicode.com/users')
    .done(function (resp) {
      self.users = resp;
      self.update()
    });

  this.on('mount', function (){
    $('.nav li.active').removeClass('active');
    $('#nav-item-users').addClass('active');
  });
  </script>
</users>
