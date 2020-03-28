import { Elm } from "./Main.elm";

var app = Elm.Main.init({ node: document.querySelector("main") });

const editor = new FroalaEditor("#editor");

app.ports.wantContent.subscribe(function() {
  app.ports.receivedContent.send(editor.html.get())
});
