/* global QUnit */
QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function () {
	"use strict";

	sap.ui.require([
		"so_poc_app_ns/so_poc_ui5_module/test/unit/AllTests"
	], function () {
		QUnit.start();
	});
});
