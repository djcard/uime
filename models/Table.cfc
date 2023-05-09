component extends="BaseUIME" {
	function run( required array tableData, bordered=false, hover=false, striped=false ){
		var classList = "";
		classList = classList &  #bordered ? " table-bordered" : ""#;
		classList = classList & #hover ? " table-hover" : ""#;
		classList = classList & #striped ? " table-striped" : ""#;
		var rowData = "";
		tableData.each(function(item){
			rowData = rowData & createRow(item.contents, item.classes);
		});
		return '<table class="table #classList#">#rowData#</table>';
	}
	function createThead(){

	}

	function createTbody(){

	}

	function createRow( required array cells, classes=""){
		var cellData = "";

		cells.each(function( item ){
			var classes = item.keyExists("classes") ? item.classes : "";
			cellData = cellData & createCell(item.contents,item.header,item.classes);
		});

		return '<tr classList="uimeTR #classes#">#cellData#</tr>';
	}

	function createCell( required contents, header=false, classes = ""){
		var tag = header ? "th" : "td";
		return '<#tag# class="uime#tag.ucase()# #classes#">#contents#</#tag#>';
	}
}
