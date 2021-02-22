
// import Rails from "@rails/ujs"
// import * as ActiveStorage from "@rails/activestorage"
// import "channels"

// Rails.start()
// ActiveStorage.start()

require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("trix")
require("@rails/actiontext")

import "../src/application.css";

import "./flashMessages";

import "./modal";
import "./likes";
