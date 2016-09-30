<album>
  <div class="container">
    <div class="row">
      <div class="col-md-1">
        <img src={ this.photos[0].thumbnailUrl } height='50' width='50' />
      </div>
      <div class="col-md-11">
        <h4 class="list-group-item-heading">{ this.album.title }</h4>
      </div>
    </div> <!-- .row -->
  </div> <!-- .container -->

  <script>
  var self = this;
  console.log(this.opts);

  $.ajax('https://jsonplaceholder.typicode.com/albums/' + this.album.id + '/photos')
    .done(function (resp) {
      self.photos = resp;
      self.update()
    });
  </script>
</album>
