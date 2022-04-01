// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require moment 
//= require fullcalendar
//= require fullcalendar/locale-all

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "jquery"
import "bootstrap"
import "paper"
import "moment"
import "fullcalendar"
import "../stylesheets/application"

document.addEventListener("turbolinks:load", () =>{
  $('[data-toggle="tooltip"]').tooltip()
  $('[data-toggle="popover"]').popover()
})

function displayChart() {
  
}
// function eventCalendar() {
//   return $('#calendar').fullCalendar({ });
// };
// function clearCalendar() {
//   $('#calendar').fullCalendar('delete'); 
//   $('#calendar').html('');
// };
// $(document).on('turbolinks:load', function(){
//   $('#calendar').fullCalendar({});
// })

// $(document).on('turbolinks:load', function(){
//   eventCalendar();  
// });
// $(document).on('turbolinks:before-cache', clearCalendar);

// Support component names relative to this directory:
var componentRequireContext = require.context("components", true);
var ReactRailsUJS = require("react_ujs");
ReactRailsUJS.useContext(componentRequireContext);
