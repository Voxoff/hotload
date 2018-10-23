App.refresh = App.cable.subscriptions.create "RefreshChannel"
  received: (data) -> 
    console.log("Coffee")
