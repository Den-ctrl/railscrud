import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";
require("flatpickr/dist/flatpickr.css");

// Connects to data-controller="flatpickr"
export default class extends Controller {
  connect() {
    flatpickr(".date-select", {
      enableTime: true,
      dateFormat: "Y-m-d H:i",
      minDate: "today",
    });

    flatpickr(".birthday-select", {
      dateFormat: "Y-m-d",
      altInput: true,
      altFormat: "F j, Y",
    });
  }
}
