component extends="BaseUIME"{

	function run( required array rowData, id = "", classes = "" ){
		var id = arguments.id.len() ? "id=""#arguments.id#""" : "";

		var retme = "<div class=""row uimeRow uimeEqualRow #arguments.classes#"" #id#>";
		rowData.each( function( item, index ){
			retme = retme & "<div class=""col"">#item#</div>";
		} );
		retme = retme & "</div>";
		return retme;
	}

}
