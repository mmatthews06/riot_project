<album>
  <img src={ this.photos[0].thumbnailUrl } height='50px' width='50px' />
  <h4 class="list-group-item-heading">{ this.album.title }</h4>

  var self = this;
  console.log(this.opts);

  $.ajax('https://jsonplaceholder.typicode.com/users/' + this.album.albumId + '/photos')
    .done(function (resp) {
      self.photos = resp;
      self.update()
    });
</album>
