component extends="BaseUIME"{

	function run(
		required array tabData,
		id      = "",
		classes = "",
		format  = "tabs"
	){
		var id = arguments.id.len() ? "id=""#arguments.id#""" : "myTabs";

		var retme = "<ul class=""nav nav-#arguments.format# uiTabTabHolder #classes#"" id=""#id#Tabs"" role=""tablist"">";
		tabData.each( function( item, index ){
			var active = index == 1 ? "active" : "";
			item.id    = createUUID().lcase();
			retme      = retme & "
				<li class=""nav-item uiTabTab"" role=""presentation"">
					<button class=""nav-link #active#"" id=""#item.id#-tab"" data-bs-toggle=""tab"" data-bs-target=""##a#item.id#Panel"" type=""button"" role=""tab"" aria-controls=""#item.id#"" aria-selected=""true"">#item.label#</button>
				</li>";
		} );
		retme = retme & "</ul>";

		retme = retme & "<div class=""tab-content uiTabContentHolder"" id=""#id#Content"">";
		tabData.each( function( item, index ){
			var active = index == 1 ? "active" : "";
			retme      = retme & "<div class=""tab-pane fade show #active#"" id=""a#item.id#Panel"" role=""tabpanel"" aria-labelledby=""#item.id#-tab"">
				#item.content#
			</div>";
		} );
		retme = retme & "</div>";
		return retme;
	}

}
