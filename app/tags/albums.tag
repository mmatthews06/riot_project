require('album.tag');

<albums>
  <ul class="list-group striped">
    <a href="#" class="list-group-item" each={ album in albums }>
      <div class="row">
        <div class="col-md-3">
          <album album={album}></album>
          <!-- <h4 class="list-group-item-heading">{ title }</h4> -->
        </div> <!-- .col-md-3 -->
      </div> <!-- .row -->
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
