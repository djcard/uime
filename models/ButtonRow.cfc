component {
	function run(buttonData,submitValue,align="start"){
		var retme ='<div style="display:flex,flex-direction:row; justify-content: #align#">';
		buttonData.each(function(button){
			var className = button.keyExists("className") ? button.className : "primary";
			var action = button.keyExists("submitKey") ? "#button.action#('#button.submitValue#')" : button.keyExists("click") ? button.click : "";
			var buttonId = button.keyExists("id") ? button.id : "";
			retme = retme & '<button id="#buttonId#" class="btn btn-#className# btn-sm" type="#button.type#" onclick="#action#" title="#button.title#">#button.label#</button>';
		});
		return retme & '</div>';
	}
}
