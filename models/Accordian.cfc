/***
 * Creates an Accoridan Control. id is not accepted in this component because it breaks the interactivity
 *
 * @data    - An array of structs. Each item should include label and html.
 * @classes - a space delimited list of classes to
 **/
component extends="BaseUIME" {

	function run( data, classes = "", openState="" ){
		var retme = "";

		retme = retme & "<div class=""accordian uimeAccordian #arguments.classes#"" >";
		data.each( function( item, index ){
			item.id          = createUUID();
			var active       = index == 1 ? "active" : "";
			var showMe = openState=="open" || (openState=="first" && index==1)
				? "show"
				: "";
			var renderedHTML = "<div class=""accordion-item"">
				<h4 class=""accordian-header"">
					<button class=""accordion-button"" type=""button"" data-bs-toggle=""collapse"" data-bs-target=""##a#item.id#"" aria-expanded=""true"" aria-controls=""a#item.id#label"">#item.label#</button>
				</h4>
				<div id=""a#item.id#"" class=""accordion-collapse collapse #showMe#"" aria-labelledby=""a#item.id#label"" data-bs-parent=""##siteModelControls"">
					<div class=""accordion-body"">
						#item.html#
					</div>
				</div>
			</div>";
			retme = retme & renderedHTML;
		} );
		retme = retme & "</div>";
		return retme;
	}

}
