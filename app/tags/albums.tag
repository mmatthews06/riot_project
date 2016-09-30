require('album.tag');

<albums>
  <ul class="list-group striped">
    <a href="#" class="list-group-item" each={ album in albums }>
      <album album={ album }></album>
    </a> <!-- .list-group-item -->
  </ul> <!-- .list-goup -->

  var self = this;

  $.ajax('https://jsonplaceholder.typicode.com/albums')
    .done(function (resp) {
      self.albums = resp;
      self.update()
    });

  this.on('mount', function (){
    $('.nav li.active').removeClass('active');
    $('#nav-item-albums').addClass('active');
  });
</albums>
