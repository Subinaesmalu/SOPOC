{
	"contents": {
		"cd8bfa4e-7ac1-4723-99cc-8d785c10822e": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "sopocworkflow.ns.myworkflow",
			"subject": "MyWorkflow",
			"name": "MyWorkflow",
			"documentation": "SO POC Workflow",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"08bdc5d0-add3-488d-8d1b-9ed86eb7a467": {
					"name": "StartEvent2"
				},
				"24b47dfe-5ace-48c1-986e-86b16156efa4": {
					"name": "EndEvent2"
				},
				"4ffa2da6-17b3-4e67-a3bf-73b6a0c3a0bf": {
					"name": "EndEvent3"
				},
				"e5e60c84-1e0c-483a-a069-0b68560a5293": {
					"name": "EndEvent4"
				}
			},
			"activities": {
				"f58bbfec-08e5-427e-a4e6-0b4dab1fa679": {
					"name": "First Level Approval"
				},
				"ede6eb2f-85b8-451b-8efd-d13e7d2b2e73": {
					"name": "PrepareApprovalList"
				},
				"faed8ae8-8d47-48e0-9e12-4e7c19baaa6a": {
					"name": "Second Level Approval"
				},
				"5a086f32-8283-44cc-8ad5-1efbe114b099": {
					"name": "1st Level"
				},
				"c708e2b3-475f-428b-9d76-9ef3812fb5e4": {
					"name": "MailTask1"
				},
				"bca862bb-7c72-4dc6-8994-e9ada0606c8b": {
					"name": "2nd Level"
				},
				"4994238f-b47a-4419-be29-d2ffdf4bc1f5": {
					"name": "Final Level Approved"
				},
				"db67fb9c-7604-4887-84bf-b29f905f73bc": {
					"name": "Final Level Rejected"
				},
				"c965f646-bbe8-48b6-acb4-bae838d52662": {
					"name": "Update SO(Odata)"
				},
				"a278d79d-e877-4c5f-bd6f-1bf1ae99f5df": {
					"name": "OData Payload"
				}
			},
			"sequenceFlows": {
				"5199d9c8-7224-4fd3-a6fc-ebf5d9931a06": {
					"name": "SequenceFlow4"
				},
				"d56558d9-7989-4c09-a704-b5974df31686": {
					"name": "SequenceFlow5"
				},
				"8bbb72d5-856e-4237-800d-42b2e078400a": {
					"name": "SequenceFlow6"
				},
				"ce3f3294-a759-49e2-bae9-285abdb8c214": {
					"name": "Approved"
				},
				"f9c5f664-d7b3-43f8-92ac-4b1bfebd7880": {
					"name": "Rejected"
				},
				"01b4a7e9-c174-4ed3-9da5-7342e7a41a6f": {
					"name": "SequenceFlow9"
				},
				"fa6a7595-5e57-4e56-a353-357b6fcfc11c": {
					"name": "SequenceFlow10"
				},
				"d45f881c-d356-4097-bf88-8d4b459c8a59": {
					"name": "Approved"
				},
				"47b5e3cb-4602-4f2d-b193-8d4898455be1": {
					"name": "Rejected"
				},
				"2161e82e-5d66-4912-bac7-642a14701347": {
					"name": "SequenceFlow13"
				},
				"88695a54-83ac-41b9-aa1d-9984a5167c5d": {
					"name": "SequenceFlow16"
				},
				"8198c175-d738-4049-a118-6aa89ced0f26": {
					"name": "SequenceFlow18"
				},
				"4ded93bb-c3cd-4d54-9a2f-e45ad83a0e4c": {
					"name": "SequenceFlow20"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"08bdc5d0-add3-488d-8d1b-9ed86eb7a467": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent2",
			"name": "StartEvent2",
			"sampleContextRefs": {
				"1fb0b103-81c3-4744-9e9d-fcdc85825d3a": {}
			}
		},
		"24b47dfe-5ace-48c1-986e-86b16156efa4": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "EndEvent2"
		},
		"4ffa2da6-17b3-4e67-a3bf-73b6a0c3a0bf": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent3",
			"name": "EndEvent3"
		},
		"e5e60c84-1e0c-483a-a069-0b68560a5293": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent4",
			"name": "EndEvent4"
		},
		"f58bbfec-08e5-427e-a4e6-0b4dab1fa679": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "First Level Approval",
			"description": "First Level Approval",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.approvers.Approver1}",
			"formReference": "/forms/MyWorkflow/ApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "First Level Approval",
			"documentation": "First Level Approval"
		},
		"ede6eb2f-85b8-451b-8efd-d13e7d2b2e73": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/MyWorkflow/PrepareApproversList.js",
			"id": "scripttask1",
			"name": "PrepareApprovalList"
		},
		"faed8ae8-8d47-48e0-9e12-4e7c19baaa6a": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Second Level Approval",
			"description": "Second Level Approval",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.approvers.Approver2}",
			"formReference": "/forms/MyWorkflow/ApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask2",
			"name": "Second Level Approval",
			"documentation": "Second Level Approval"
		},
		"5a086f32-8283-44cc-8ad5-1efbe114b099": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "1st Level",
			"default": "ce3f3294-a759-49e2-bae9-285abdb8c214"
		},
		"c708e2b3-475f-428b-9d76-9ef3812fb5e4": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask1",
			"name": "MailTask1",
			"mailDefinitionRef": "f25fac45-6eb1-4052-9f9b-79de495481e8"
		},
		"bca862bb-7c72-4dc6-8994-e9ada0606c8b": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "2nd Level",
			"default": "d45f881c-d356-4097-bf88-8d4b459c8a59"
		},
		"4994238f-b47a-4419-be29-d2ffdf4bc1f5": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask2",
			"name": "Final Level Approved",
			"documentation": "Final Level Approved",
			"mailDefinitionRef": "29d5f224-b74c-4265-875c-f132689c5f52"
		},
		"db67fb9c-7604-4887-84bf-b29f905f73bc": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask3",
			"name": "Final Level Rejected",
			"documentation": "Final Level Rejected",
			"mailDefinitionRef": "eb0a1420-5860-47a5-b6d8-b571ade4b776"
		},
		"c965f646-bbe8-48b6-acb4-bae838d52662": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "ERPPCEBASICAUTH",
			"destinationSource": "consumer",
			"path": "/sap/opu/odata/sap/ZSD_SO_POC_SRV/SO_HEADERSet",
			"httpMethod": "POST",
			"xsrfPath": "/sap/opu/odata/sap/ZSD_SO_POC_SRV/SO_HEADERSet?sap-client=500",
			"requestVariable": "${context.so_data}",
			"responseVariable": "${context.response}",
			"id": "servicetask1",
			"name": "Update SO(Odata)"
		},
		"a278d79d-e877-4c5f-bd6f-1bf1ae99f5df": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/MyWorkflow/Odata_Payload.js",
			"id": "scripttask4",
			"name": "OData Payload"
		},
		"5199d9c8-7224-4fd3-a6fc-ebf5d9931a06": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "08bdc5d0-add3-488d-8d1b-9ed86eb7a467",
			"targetRef": "ede6eb2f-85b8-451b-8efd-d13e7d2b2e73"
		},
		"d56558d9-7989-4c09-a704-b5974df31686": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "ede6eb2f-85b8-451b-8efd-d13e7d2b2e73",
			"targetRef": "f58bbfec-08e5-427e-a4e6-0b4dab1fa679"
		},
		"8bbb72d5-856e-4237-800d-42b2e078400a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "f58bbfec-08e5-427e-a4e6-0b4dab1fa679",
			"targetRef": "5a086f32-8283-44cc-8ad5-1efbe114b099"
		},
		"ce3f3294-a759-49e2-bae9-285abdb8c214": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "Approved",
			"sourceRef": "5a086f32-8283-44cc-8ad5-1efbe114b099",
			"targetRef": "faed8ae8-8d47-48e0-9e12-4e7c19baaa6a"
		},
		"f9c5f664-d7b3-43f8-92ac-4b1bfebd7880": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.decision == \"reject\"}",
			"id": "sequenceflow8",
			"name": "Rejected",
			"sourceRef": "5a086f32-8283-44cc-8ad5-1efbe114b099",
			"targetRef": "c708e2b3-475f-428b-9d76-9ef3812fb5e4"
		},
		"01b4a7e9-c174-4ed3-9da5-7342e7a41a6f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "c708e2b3-475f-428b-9d76-9ef3812fb5e4",
			"targetRef": "24b47dfe-5ace-48c1-986e-86b16156efa4"
		},
		"fa6a7595-5e57-4e56-a353-357b6fcfc11c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "faed8ae8-8d47-48e0-9e12-4e7c19baaa6a",
			"targetRef": "bca862bb-7c72-4dc6-8994-e9ada0606c8b"
		},
		"d45f881c-d356-4097-bf88-8d4b459c8a59": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "Approved",
			"sourceRef": "bca862bb-7c72-4dc6-8994-e9ada0606c8b",
			"targetRef": "4994238f-b47a-4419-be29-d2ffdf4bc1f5"
		},
		"47b5e3cb-4602-4f2d-b193-8d4898455be1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.decision == \"reject\"}",
			"id": "sequenceflow12",
			"name": "Rejected",
			"sourceRef": "bca862bb-7c72-4dc6-8994-e9ada0606c8b",
			"targetRef": "db67fb9c-7604-4887-84bf-b29f905f73bc"
		},
		"2161e82e-5d66-4912-bac7-642a14701347": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "4994238f-b47a-4419-be29-d2ffdf4bc1f5",
			"targetRef": "a278d79d-e877-4c5f-bd6f-1bf1ae99f5df"
		},
		"88695a54-83ac-41b9-aa1d-9984a5167c5d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "db67fb9c-7604-4887-84bf-b29f905f73bc",
			"targetRef": "e5e60c84-1e0c-483a-a069-0b68560a5293"
		},
		"8198c175-d738-4049-a118-6aa89ced0f26": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow18",
			"name": "SequenceFlow18",
			"sourceRef": "c965f646-bbe8-48b6-acb4-bae838d52662",
			"targetRef": "4ffa2da6-17b3-4e67-a3bf-73b6a0c3a0bf"
		},
		"4ded93bb-c3cd-4d54-9a2f-e45ad83a0e4c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow20",
			"name": "SequenceFlow20",
			"sourceRef": "a278d79d-e877-4c5f-bd6f-1bf1ae99f5df",
			"targetRef": "c965f646-bbe8-48b6-acb4-bae838d52662"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"5bdf4d40-3a8b-4d4c-9e01-d627e572d2c5": {},
				"cdf7e67a-e11d-49f6-8007-c262ebc8fbf4": {},
				"3263dd07-79da-4cbd-b5fb-e9fa391078a3": {},
				"8e123e1f-e9a8-42f2-9305-79988a0e9a80": {},
				"0039f27e-d42a-4966-a7ae-dfb6f17d6246": {},
				"27baafd0-aebf-4c3f-ad93-ca828502acc4": {},
				"535f5d95-30a6-435c-a96e-ff739eb077c7": {},
				"35d130b9-01e2-43eb-86fd-b63b294510d6": {},
				"57a611b8-f780-4d02-8bdf-aa27cbbc35d9": {},
				"c2336718-89db-4278-a493-6c9e90aa7ae0": {},
				"bb87b9bc-3a73-4fc7-9537-1637832cdb9a": {},
				"a90e6efa-6793-4699-8581-ff615befacb2": {},
				"7d0f6023-4634-4e8b-8f26-1c8e0dbd5a40": {},
				"ae7aca17-81ab-428f-a208-c6d33fb2aa9a": {},
				"b13ebc4f-0fc9-4017-99bb-df22a445a2ba": {},
				"39f46b5e-e9f3-4957-b845-a85bc2ba30fa": {},
				"f67e5e8e-23ca-4739-9c5f-db8d4cf0b6f6": {},
				"416ce6ef-14d2-4031-b3cb-e28398930c40": {},
				"d5b30d4d-d483-49eb-b40b-94c5ba43f388": {},
				"801cf081-cab1-4b79-b0da-70dc20458607": {},
				"bc501101-4d52-4274-9ad5-1d7a25528fb7": {},
				"0bc10466-f318-4445-8068-dc0aa23d1389": {},
				"0b02344e-01e7-464c-88a6-b292f3801f35": {},
				"c717c3ae-b075-4890-9c3b-d2f5345d748b": {},
				"f5c095eb-a9a4-40fd-a621-a9bf7ec04df8": {},
				"2441f251-2e5e-4a2b-bb4e-59066723acd9": {},
				"3b964fd2-1627-4e65-bf17-b5e2ae65f42e": {}
			}
		},
		"1fb0b103-81c3-4744-9e9d-fcdc85825d3a": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/MyWorkflow/SampleData.json",
			"id": "default-start-context"
		},
		"5bdf4d40-3a8b-4d4c-9e01-d627e572d2c5": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 87,
			"y": 204,
			"width": 100,
			"height": 60,
			"object": "f58bbfec-08e5-427e-a4e6-0b4dab1fa679"
		},
		"cdf7e67a-e11d-49f6-8007-c262ebc8fbf4": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 87,
			"y": 94,
			"width": 100,
			"height": 60,
			"object": "ede6eb2f-85b8-451b-8efd-d13e7d2b2e73"
		},
		"3263dd07-79da-4cbd-b5fb-e9fa391078a3": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 12,
			"y": 425.9999988079071,
			"width": 100,
			"height": 60,
			"object": "faed8ae8-8d47-48e0-9e12-4e7c19baaa6a"
		},
		"8e123e1f-e9a8-42f2-9305-79988a0e9a80": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 121,
			"y": 12,
			"width": 32,
			"height": 32,
			"object": "08bdc5d0-add3-488d-8d1b-9ed86eb7a467"
		},
		"0039f27e-d42a-4966-a7ae-dfb6f17d6246": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,44 137,94",
			"sourceSymbol": "8e123e1f-e9a8-42f2-9305-79988a0e9a80",
			"targetSymbol": "cdf7e67a-e11d-49f6-8007-c262ebc8fbf4",
			"object": "5199d9c8-7224-4fd3-a6fc-ebf5d9931a06"
		},
		"27baafd0-aebf-4c3f-ad93-ca828502acc4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,154 137,204",
			"sourceSymbol": "cdf7e67a-e11d-49f6-8007-c262ebc8fbf4",
			"targetSymbol": "5bdf4d40-3a8b-4d4c-9e01-d627e572d2c5",
			"object": "d56558d9-7989-4c09-a704-b5974df31686"
		},
		"535f5d95-30a6-435c-a96e-ff739eb077c7": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 116,
			"y": 314,
			"object": "5a086f32-8283-44cc-8ad5-1efbe114b099"
		},
		"35d130b9-01e2-43eb-86fd-b63b294510d6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,264 137,314",
			"sourceSymbol": "5bdf4d40-3a8b-4d4c-9e01-d627e572d2c5",
			"targetSymbol": "535f5d95-30a6-435c-a96e-ff739eb077c7",
			"object": "8bbb72d5-856e-4237-800d-42b2e078400a"
		},
		"57a611b8-f780-4d02-8bdf-aa27cbbc35d9": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,356 137,390.99999940395355 62,390.99999940395355 62,425.9999988079071",
			"sourceSymbol": "535f5d95-30a6-435c-a96e-ff739eb077c7",
			"targetSymbol": "3263dd07-79da-4cbd-b5fb-e9fa391078a3",
			"object": "ce3f3294-a759-49e2-bae9-285abdb8c214"
		},
		"c2336718-89db-4278-a493-6c9e90aa7ae0": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 162,
			"y": 425.9999988079071,
			"width": 100,
			"height": 60,
			"object": "c708e2b3-475f-428b-9d76-9ef3812fb5e4"
		},
		"bb87b9bc-3a73-4fc7-9537-1637832cdb9a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,356 137,390.99999940395355 212,390.99999940395355 212,425.9999988079071",
			"sourceSymbol": "535f5d95-30a6-435c-a96e-ff739eb077c7",
			"targetSymbol": "c2336718-89db-4278-a493-6c9e90aa7ae0",
			"object": "f9c5f664-d7b3-43f8-92ac-4b1bfebd7880"
		},
		"a90e6efa-6793-4699-8581-ff615befacb2": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 211.5,
			"y": 549.9999976158142,
			"width": 35,
			"height": 35,
			"object": "24b47dfe-5ace-48c1-986e-86b16156efa4"
		},
		"7d0f6023-4634-4e8b-8f26-1c8e0dbd5a40": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "212,485.9999988079071 212,518.25 229,518.25 229,549.9999976158142",
			"sourceSymbol": "c2336718-89db-4278-a493-6c9e90aa7ae0",
			"targetSymbol": "a90e6efa-6793-4699-8581-ff615befacb2",
			"object": "01b4a7e9-c174-4ed3-9da5-7342e7a41a6f"
		},
		"ae7aca17-81ab-428f-a208-c6d33fb2aa9a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 41,
			"y": 508,
			"object": "bca862bb-7c72-4dc6-8994-e9ada0606c8b"
		},
		"b13ebc4f-0fc9-4017-99bb-df22a445a2ba": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "61.5,464 61.5,508.5",
			"sourceSymbol": "3263dd07-79da-4cbd-b5fb-e9fa391078a3",
			"targetSymbol": "ae7aca17-81ab-428f-a208-c6d33fb2aa9a",
			"object": "fa6a7595-5e57-4e56-a353-357b6fcfc11c"
		},
		"39f46b5e-e9f3-4957-b845-a85bc2ba30fa": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": -66,
			"y": 585,
			"width": 100,
			"height": 60,
			"object": "4994238f-b47a-4419-be29-d2ffdf4bc1f5"
		},
		"f67e5e8e-23ca-4739-9c5f-db8d4cf0b6f6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,529 -16,529 -16,585.5",
			"sourceSymbol": "ae7aca17-81ab-428f-a208-c6d33fb2aa9a",
			"targetSymbol": "39f46b5e-e9f3-4957-b845-a85bc2ba30fa",
			"object": "d45f881c-d356-4097-bf88-8d4b459c8a59"
		},
		"416ce6ef-14d2-4031-b3cb-e28398930c40": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 66,
			"y": 585,
			"width": 100,
			"height": 60,
			"object": "db67fb9c-7604-4887-84bf-b29f905f73bc"
		},
		"d5b30d4d-d483-49eb-b40b-94c5ba43f388": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "82.5,529 116,529 116,585.5",
			"sourceSymbol": "ae7aca17-81ab-428f-a208-c6d33fb2aa9a",
			"targetSymbol": "416ce6ef-14d2-4031-b3cb-e28398930c40",
			"object": "47b5e3cb-4602-4f2d-b193-8d4898455be1"
		},
		"801cf081-cab1-4b79-b0da-70dc20458607": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": -26.5,
			"y": 872.5,
			"width": 35,
			"height": 35,
			"object": "4ffa2da6-17b3-4e67-a3bf-73b6a0c3a0bf"
		},
		"bc501101-4d52-4274-9ad5-1d7a25528fb7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-16,615 -16,697",
			"sourceSymbol": "39f46b5e-e9f3-4957-b845-a85bc2ba30fa",
			"targetSymbol": "2441f251-2e5e-4a2b-bb4e-59066723acd9",
			"object": "2161e82e-5d66-4912-bac7-642a14701347"
		},
		"0bc10466-f318-4445-8068-dc0aa23d1389": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 98.5,
			"y": 696.5,
			"width": 35,
			"height": 35,
			"object": "e5e60c84-1e0c-483a-a069-0b68560a5293"
		},
		"0b02344e-01e7-464c-88a6-b292f3801f35": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,615 116,707",
			"sourceSymbol": "416ce6ef-14d2-4031-b3cb-e28398930c40",
			"targetSymbol": "0bc10466-f318-4445-8068-dc0aa23d1389",
			"object": "88695a54-83ac-41b9-aa1d-9984a5167c5d"
		},
		"c717c3ae-b075-4890-9c3b-d2f5345d748b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": -66,
			"y": 767,
			"width": 100,
			"height": 60,
			"object": "c965f646-bbe8-48b6-acb4-bae838d52662"
		},
		"f5c095eb-a9a4-40fd-a621-a9bf7ec04df8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-12.5,797 -12.5,890",
			"sourceSymbol": "c717c3ae-b075-4890-9c3b-d2f5345d748b",
			"targetSymbol": "801cf081-cab1-4b79-b0da-70dc20458607",
			"object": "8198c175-d738-4049-a118-6aa89ced0f26"
		},
		"2441f251-2e5e-4a2b-bb4e-59066723acd9": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -66,
			"y": 667,
			"width": 100,
			"height": 60,
			"object": "a278d79d-e877-4c5f-bd6f-1bf1ae99f5df"
		},
		"3b964fd2-1627-4e65-bf17-b5e2ae65f42e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-16,697 -16,797",
			"sourceSymbol": "2441f251-2e5e-4a2b-bb4e-59066723acd9",
			"targetSymbol": "c717c3ae-b075-4890-9c3b-d2f5345d748b",
			"object": "4ded93bb-c3cd-4d54-9a2f-e45ad83a0e4c"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 3,
			"sequenceflow": 20,
			"startevent": 2,
			"endevent": 4,
			"usertask": 2,
			"servicetask": 1,
			"scripttask": 4,
			"mailtask": 3,
			"exclusivegateway": 3,
			"referencedsubflow": 1
		},
		"f25fac45-6eb1-4052-9f9b-79de495481e8": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "${info.startedBy}",
			"subject": "Rejected",
			"text": "Rejected",
			"id": "maildefinition1"
		},
		"29d5f224-b74c-4265-875c-f132689c5f52": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "${info.startedBy}",
			"subject": "Final Level Approved",
			"text": "Final Level Approved",
			"id": "maildefinition2"
		},
		"eb0a1420-5860-47a5-b6d8-b571ade4b776": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition3",
			"to": "${info.startedBy}",
			"subject": "Final Level Rejected",
			"text": "Final Level Rejected",
			"id": "maildefinition3"
		}
	}
}