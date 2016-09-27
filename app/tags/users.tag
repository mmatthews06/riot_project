<users>
  <ul class="list-group striped">
    <a href="#" class="list-group-item" each={ users }>
      <h4 class="list-group-item-heading">{ name }</h4>
      <p class="list-group-item-text">{ email }</p>
    </a>
  </ul>

  var self = this;

  $.ajax('https://jsonplaceholder.typicode.com/users')
    .done(function (resp) {
      self.users = resp;
      console.log('Resp:', resp);
      self.update()
    });
</users>
