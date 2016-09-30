<album>
  <div class="container">
    <div class="row">
      <div class="col-md-1">
        <img src={ this.photos[this.photoIdx].thumbnailUrl } height='50' width='50' />
      </div>
      <div class="col-md-11">
        <h4 class="list-group-item-heading">{ this.album.title }</h4>
      </div>
    </div> <!-- .row -->
  </div> <!-- .container -->

  var self = this;
  console.log(this.opts);

  $.ajax('https://jsonplaceholder.typicode.com/users/' + this.album.albumId + '/photos')
    .done(function (resp) {
      self.photoIdx = Math.floor( Math.random() * resp.length );
      self.photos = resp;
      self.update()
    });
</album>
