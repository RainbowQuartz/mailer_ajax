// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

function loadBody(){
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("contenu").innerHTML =
      this.responseText;
    }
  };
  xhttp.open("GET", true);
  xhttp.send();
}

$(window).bind("load", function() {
	<% Email.all.each do |email| %>
		<% if email.read %>
			$('#email-id-<%= email.id %>').css('display', 'none');
		<% else %>
			$('#email-id-<%= email.id %>').css('display', 'inline-block');
		<% end %>
	<% end %>
});
