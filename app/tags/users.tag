<users>
  <ul class="list-group striped">
    <a href="#" class="list-group-item" each={ users }>
      <div class="row">
        <div class="col-md-3">
          <h4 class="list-group-item-heading">{ name }</h4>
          <p class="list-group-item-text">{ email }</p>
        </div> <!-- .col-md-3 -->
        <div class="col-md-4 user-address">
          <span class="small-text">From:</span>
          <br/>
          <span class="address">{ address.street }</span>
          <br/>
          <span class="address">{ address.city }</span>
        </div> <!-- .col-md-4 -->
      </div> <!-- .row -->
    </a> <!-- .list-group-item -->
  </ul> <!-- .list-goup -->

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
</users>
