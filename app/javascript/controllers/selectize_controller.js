import { Controller } from "@hotwired/stimulus";
import "@selectize/selectize";
import $ from "jquery";

// Connects to data-controller="selectize"
export default class extends Controller {
  connect() {
    $.ajax({
      url: "/get_data",
      type: "GET",
      success: (data) => {
        console.log(data);

        const users = data.map((user) => ({
          value: user.id,
          email: user.email,
        }));

        $("#select-user").selectize({
          options: users,
          labelField: "email",
          searchField: ["email"],
          sortField: "email",
          plugins: ["restore_on_backspace", "clear_button"],
          delimiter: " - ",
          persist: false,
          maxItems: null,
        });
      },
    });
  }
}
