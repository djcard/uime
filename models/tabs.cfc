component {
	function run(tabData){
		var retme='<ul class="nav nav-tabs" id="myTab" role="tablist">';
		tabData.each(function(item, index){
			var active = index==1 ? "active" : "";
			item.id = createuuid().lcase();
			retme = retme & '
				<li class="nav-item" role="presentation">
					<button class="nav-link #active#" id="#item.id#-tab" data-bs-toggle="tab" data-bs-target="##a#item.id#Panel" type="button" role="tab" aria-controls="#item.id#" aria-selected="true">#item.label#</button>
				</li>';
		});
		retme = retme & '</ul>';

		retme =retme & '<div class="tab-content" id="myTabContent">';
		tabData.each(function(item,index){
			var active = index==1 ? "active" : "";
			retme = retme & '<div class="tab-pane fade show #active#" id="a#item.id#Panel" role="tabpanel" aria-labelledby="#item.id#-tab">
				#item.content#
			</div>';
		});
		retme = retme & '</div>';
		return retme;
	}
}
