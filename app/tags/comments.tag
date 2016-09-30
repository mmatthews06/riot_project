<comments>
  <ul class="list-group striped">
    <a href="#" class="list-group-item" each={ comments }>
      <div class="row">
        <div class="col-md-3">
          <h4 class="list-group-item-heading">{ name }</h4>
        </div> <!-- .col-md-3 -->
      </div> <!-- .row -->
    </a> <!-- .list-group-item -->
  </ul> <!-- .list-goup -->

  <script>
  var self = this;

  $.ajax('https://jsonplaceholder.typicode.com/comments')
    .done(function (resp) {
     self.comments = resp;
      self.update()
    });

  this.on('mount', function (){
    $('.nav li.active').removeClass('active');
    $('#nav-item-comments').addClass('active');
  });
  </script>
</comments>
