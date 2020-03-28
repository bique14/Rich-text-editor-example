import { Elm } from "./Main.elm";

var app = Elm.Main.init({ node: document.querySelector("main") });

const editor = new FroalaEditor("#editor");

app.ports.wantContent.subscribe(function() {
  const preview = document.getElementById("preview")
  preview.innerHTML = editor.html.get()
  app.ports.receivedContent.send(editor.html.get())
});
