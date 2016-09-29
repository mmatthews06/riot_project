<albums>
  <ul class="list-group striped">
    <a href="#" class="list-group-item" each={ albums }>
      <div class="row">
        <div class="col-md-3">
          <h4 class="list-group-item-heading">{ title }</h4>
        </div> <!-- .col-md-3 -->
      </div> <!-- .row -->
    </a> <!-- .list-group-item -->
  </ul> <!-- .list-goup -->

  var self = this;

  $.ajax('https://jsonplaceholder.typicode.com/albums')
    .done(function (resp) {
      console.log('Albums:', resp);
      self.albums = resp;
      self.update()
    });
</albums>
