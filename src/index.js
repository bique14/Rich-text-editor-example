import { Elm } from "./Main.elm";
// import EmbedButtonExtension from '../node_modules/medium-editor-embed-button/dist/js/medium-editor-embed-button.min.js'
import FroalaEditor from "../node_modules/froala-editor/js/froala_editor.pkgd.min.js";
// ../node_modules/froala-editor/js/third_party/embedly.min.js
var app = Elm.Main.init({ node: document.querySelector("main") });

const editor = new FroalaEditor("div#editor", {
  embedlyScriptPath: 'https://cdn.embedly.com/widgets/platform.js',
});

// var editor = new MediumEditor("#editor", {
//   extensions: {
//     embedButton: new EmbedButtonExtension()
//   },
//   toolbar: {
//     buttons: [
//       "h2",
//       "bold",
//       "italic",
//       "unorderedlist",
//       "orderedlist",
//       "embedButton"
//     ]
//   }
// });
