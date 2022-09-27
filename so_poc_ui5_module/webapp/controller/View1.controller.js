sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("sopocappns.sopocui5module.controller.View1", {
            onInit: function () {

            },
            onGet:function () {                
                alert("onGet function called");                    
                var oView = this.getView();                                                                
                this.oDataModel = this.getOwnerComponent().getModel();                                     
                var aFilters1 =[];            
                var Vbeln = this.getView().byId("VBELN").getValue();
                aFilters1.push(new sap.ui.model.Filter("Vbeln",sap.ui.model.FilterOperator.EQ,Vbeln));
                
                var that = this;
                var oDataModel = this.getView().getModel();
            oDataModel.read("/SO_ITEMSet",
            {
                filters: aFilters1, 
                success: function ( oData, oResponse)
                {          
                    alert("Success at Reading Odata");                                                                                     
                    var jModel = new sap.ui.model.json.JSONModel();
                    jModel.setData(oData.results);
                    that.getView().setModel(jModel, "SOItems");
                }, 
                error: function(error){
                    alert("Error at Reading Odata");                   
                }
            });
            },
            onReq: function(){
                var token = this._fetchToken();
                var startContext = { Approver1: "SUBINA.ESMALU@alfanar.com",
                                     Approver2: "SUBINA.ESMALU@alfanar.com"
                                    }; 
                var workflowStartPayload = {definitionId: "sopocworkflow.ns.myworkflow", context: startContext}                               
                alert("Calling WF Instance");  
                $.ajax({   
                    url: "/sopocappns.sopocui5module/bpmworkflowruntime/v1/workflow-instances",
                    type: "POST",
                    data: JSON.stringify(workflowStartPayload),
                    headers: {
                        "X-CSRF-Token": token,
                        "Content-Type": "application/json"
                    },
                    async: false,
                    success: function (data) {
                        MessageBox.information("The workflow has successfully started");
                    },
                    error: function (data) {
                        alert("Error at WF calling"); 
                    }
                });
            },
            _fetchToken: function () {
                alert("WF Token Requested");  
                var token;
                $.ajax({
                    url: "/sopocappns.sopocui5module/bpmworkflowruntime/v1/xsrf-token",
                    method: "GET",
                    async: false,
                    headers: {
                        "X-CSRF-Token": "Fetch"
                    },
                    success: function (result, xhr, data) {
                        token = data.getResponseHeader("X-CSRF-Token");
                    }
                });
                return token;
            },
        });
    });
