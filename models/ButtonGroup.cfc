component extends="BaseUIME"{

	function run( buttonData, submitValue, id = "", classes = "" ){
		var id = arguments.id.len() ? "id=""#arguments.id#""" : "";

		var retme = "<div class=""btn-group uimeButtonGroup #classes#"" role=""group"" aria-label=""Basic example"" #id#>";
		buttonData.each( function( button ){
			var className = button.keyExists( "className" ) ? button.className : "primary";
			var action    = button.keyExists( "submitKey" ) ? "#button.action#('#button.submitValue#')" : button.keyExists( "click" ) ? button.click : "";
			var buttonId  = button.keyExists( "id" ) ? button.id : "";
			retme         = retme & "<button id=""#buttonId#"" class=""btn btn-#className# btn-sm"" type=""#button.type#"" onclick=""#action#"" title=""#button.title#"">#button.label#</button>";
		} );
		return retme & "</div>";
	}

}
