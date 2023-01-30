component {
	function run(rowData){
		var retme = '<div class="row">';
		rowData.each(function(item,index){
			retme = retme & '<div class="col">#item#</div>';
		});
		retme = retme & "</div>";
		return retme;
	}
}
