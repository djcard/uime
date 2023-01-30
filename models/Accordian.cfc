component {
	function run(data){
		var retme = "";
		retme = retme & '<div class="accordian" id="siteModelControls">';
		data.each(function(item,index){
			item.id=createuuid();
			var active=index==1 ? "active" : "";
			var renderedHTML = '<div class="accordion-item">
				<h4 class="accordian-header">
					<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="##a#item.id#" aria-expanded="true" aria-controls="a#item.id#label">#item.label#</button>
				</h4>
				<div id="a#item.id#" class="accordion-collapse collapse show" aria-labelledby="a#item.id#label" data-bs-parent="##siteModelControls">
					<div class="accordion-body">
						#item.html#
					</div>
				</div>
			</div>';
			retme = retme & renderedHTML;
		});
		retme = retme & '</div>';
		return retme;
	}
}
