component {
	function run(data){
		var retme='<select name="#data.name#" class="form-select" id="#data.keyExists("id") ? data.id : data.name#">'
			retme = retme & '<option value="#data.defaultValue#">#data.defaultLabel#</option>';
			data.options.each(function(item){
				retme = retme & '<option #item.keyExists("value") && item.value==data.value ? "selected" : ""# value="#item.value#">#item.label#</option>';
			});
		retme = retme & '</select>';
		return retme;
	}
}
