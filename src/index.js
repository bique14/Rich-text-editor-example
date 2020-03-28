import { Elm } from "./Main.elm";

var app = Elm.Main.init({ node: document.querySelector("main") });

const editor = new FroalaEditor("#editor", {
  events: {
    contentChanged: function() {
      app.ports.receivedContent.send(this.html.get())
    }
  }
});
