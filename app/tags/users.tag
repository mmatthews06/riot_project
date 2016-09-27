<users>
  <ul class="list-group">
    <li class="list-group-item" each={ users } class={ completed: done }>
      { name }
    </li>
  </ul>

  var self = this;

  $.ajax('https://jsonplaceholder.typicode.com/users')
    .done(function (resp) {
      self.users = resp;
      console.log('Resp:', resp);
      self.update()
    });
</users>
