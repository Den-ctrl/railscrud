import { Controller } from "@hotwired/stimulus";
import "@selectize/selectize";
import $ from "jquery";

// Connects to data-controller="selectize"
export default class extends Controller {
  connect() {
    $("select").selectize({
      plugins: ["restore_on_backspace", "clear_button"],
      delimiter: " - ",
      persist: false,
      maxItems: 1,
      valueField: "id",
      labelField: "email",
      searchField: "email",
      create: false,
    });
  }
}
