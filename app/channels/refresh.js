(function() {
  App.room = App.cable.subscriptions.create("RefreshChannel", {
    received: function(data) {
      console.log('In the loop')
      location.reload();
    }
  });
}).call(this);
