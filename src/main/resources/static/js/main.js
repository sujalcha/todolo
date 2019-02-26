$(document).ready(function() {

	$('#sidebarCollapse').on('click', function() {
		$('#sidebar').toggleClass('active');
	});

});

var counter = 1;
jQuery('a.add-author').click(
		function(event) {
			event.preventDefault();
			counter++;
			var newRow = jQuery('<tr><td><input type="text" name="first_name'
					+ counter
					+ '"/></td><td><input type="text" name="last_name'
					+ counter + '"/></td></tr>');
			jQuery('table.authors-list').append(newRow);
		});




$(document)
		.ready(
				function() {

					var counter = 2;

					$("#addButton")
							.click(
									function() {

										if (counter > 10) {
											alert("Only 10 textboxes allow");
											return false;
										}

										var newTextBoxDivnew = $(
												document.createElement('li'))
												.attr(
														"id",
														'TextBoxDivnew'
																+ counter);

										newTextBoxDivnew
												.after()
												.html(
														'<div class="row"><div class="col-sm-12"><div class="input-group mb-3"><div class="input-group-prepend"><span class="input-group-text">Team Member '
																+ counter
																+ '</span></div><input type="text" id="productName" class=" form-control mdb-autocomplete"><div class="input-group-append"><button class="btn btn-outline-secondary" type="button">ADDTO TEAM</button></div></div></div></div>');

										newTextBoxDivnew
												.appendTo("#TextBoxesGroup");

										counter++;
									});

					$("#removeButton").click(function() {
						if (counter == 1) {
							alert("No more textbox to remove");
							return false;
						}

						counter--;

						$("#TextBoxDiv" + counter).remove();

					});

				});

$(document)
.ready(
		function() {

			var counter = 2;

			$("#addteam")
					.click(
							function() {

								if (counter > 10) {
									alert("Only 10 textboxes allow");
									return false;
								}

								var teammembername=document.getElementById("productName").value;
							//	alert(teammembername);
								document.getElementById("productName").value = "";
								
								var newteammember = $(
										document.createElement('div'))
										.attr(
												"id",
												'newteam'
														+ counter);

								newteammember
										.after()
										.html(
												'<span class="input-group-text">'+teammembername+'</span>');

								newteammember
										.appendTo("#textteambox");
								
							
								counter++;
							});

		});

$(document).ready(function() {
	$('.productName').autocomplete({
		source : 'nameautocomplete',
		minlength : 2
	});
});

$(document).ready(function() {
	$('#productName').autocomplete({
		source : 'nameautocomplete',
		minlength : 2
	});
});











