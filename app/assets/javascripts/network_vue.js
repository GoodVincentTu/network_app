function loadNetworkVue(){
	if ($('#new_network').length) {
		new Vue({
			el: "#new_network",
			data: {
				name: null,
				url: null,
				image: null,
				contact_info: null,
				error: null
			},

			methods: {
				urlChanged: function(){
					this.loadPage();
				},

				loadPage: function(){
					var that = this;
					$.ajax({
						url: window.location.origin + '/crawl/' + that.url,
						contentType: 'application/json',
						dataType: 'json'
					})
					.done(function(data) {
						that.name = data.name;
						that.image = data.image;
						that.contact_info = data.contact_info;
						that.error = null;
					})
					.fail(function(data) {
						that.error = "Ajax processing failed.";
					});
				}
			}
		});
	}
}

$(loadNetworkVue);
$(document).on('turbolinks:load', loadNetworkVue);