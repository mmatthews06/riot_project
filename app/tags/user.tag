<user>
  <div class="container">
    <div class="row">
      <div class="col-md-1">
        <img src={ this.photos[this.photoIdx].thumbnailUrl } height='50' width='50' />
      </div>
      <div class="col-md-3">
        <h4 class="list-group-item-heading">{ this.user.name }</h4>
        <p class="list-group-item-text">{ this.user.email }</p>
      </div> <!-- .col-md-3 -->
      <div class="col-md-4 user-address">
        <span class="small-text">From:</span>
        <br/>
        <span class="address">{ this.user.address.street }</span>
        <br/>
        <span class="address">{ this.user.address.city }</span>
      </div> <!-- .col-md-4 -->
    </div> <!-- .row -->
  </div> <!-- .container -->

  <script>
  var self = this;
  console.log(this.opts);

  // NOTE: This URL works, but the items in the response
  // have an 'albumId', an all of the returns are the same.
  // Using it anyway, though.
  $.ajax('https://jsonplaceholder.typicode.com/users/' + this.user.id + '/photos')
    .done(function (resp) {
      self.photoIdx = Math.floor( Math.random() * resp.length );
      self.photos = resp;
      self.update()
    });
  </script>
</user>
