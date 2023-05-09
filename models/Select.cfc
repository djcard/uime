component extends="BaseUIME"{

	function run( data, id = "", classes = "" ){
		var classes = arguments.classes.len() ? arguments.classes : data.keyExists( "classes" ) ? data.classes : "";
		var retme   = '<select name="#data.name#"
			class="form-select uimeSelect #classes#"
			id="#data.keyExists( "id" ) ? data.id : data.name#"
			#data.keyExists("disabled") && data.disabled ? "disabled" : ""#
			>';
		retme       = retme & '<option value="#data.defaultValue#">#data.defaultLabel#</option>';
		data.options.each( function( item ){
			var classes=item.keyExists( "classes" ) && item.classes.len() ? item.classes : "";
			retme = retme & '<option class="uimeOption #classes#"
				#item.keyExists( "value" ) && item.value == data.value ? "selected" : ""# value="#item.value#">#item.label#</option>';
		} );
		retme = retme & '</select>';
		return retme;
	}

}
