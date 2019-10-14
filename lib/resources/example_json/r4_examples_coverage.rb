module Cerner
    module Resources
  
      R4_COVERAGE_BUNDLE ||= {
        "resourceType": "Bundle",
        "id": "ed51c7e2-bd88-4a00-8ee3-f2670190059f",
        "type": "searchset",
        "total": 1,
        "link": [
            {
                "relation": "self",
                "url": "http://localhost:3000/r4/2c400054-42d8-4e74-87b7-80b5bd5fde9f/Coverage?patient=1626016"
            }
        ],
        "entry": [
            {
                "fullUrl": "http://localhost:3000/r4/2c400054-42d8-4e74-87b7-80b5bd5fde9f/Coverage/2764339",
                "resource": {
                    "resourceType": "Coverage",
                    "id": "2764339",
                    "status": "active",
                    "meta": {
                        "versionId": "16",
                        "lastUpdated": "2015-05-04T22:44:32.000Z"
                    },
                    "text": {
                        "status": "generated",
                        "div": "&lt;div>&lt;p>&lt;b>Coverage&lt;/b>&lt;/p>&lt;p>&lt;b>Status&lt;/b>: active&lt;/p>&lt;p>&lt;b>Subscriber&lt;/b>: WOLFE, STEPHANIE T&lt;/p>&lt;p>&lt;b>Beneficiary&lt;/b>: Stephanie Wolfe&lt;/p>&lt;p>&lt;b>Dependent Number&lt;/b>: KEWIL4WW&lt;/p>&lt;p>&lt;b>Coverage Start Date&lt;/b>: Sep  5, 2012  9:30 A.M. CDT&lt;/p>&lt;p>&lt;b>Payor&lt;/b>: Aetna Missouri POS - Open&lt;/p>&lt;p>&lt;b>Class&lt;/b>: plan: Value: 729823 Name: Aetna Missouri POS Open&lt;/p>&lt;/div>"
                    },
                    "subscriber": {
                        "reference": "Patient/1626016",
                        "display": "WOLFE, STEPHANIE T"
                    },
                    "subscriberId": "1626016",
                    "beneficiary": {
                        "reference": "Patient/1626016",
                        "display": "WOLFE, STEPHANIE T"
                    },
                    "dependent": "KEWIL4WW",
                    "relationship": [
                        {
                            "coding": [
                                {
                                "system": "http://terminology.hl7.org/CodeSystem/subscriber-relationship",
                                "code": "child"
                                }
                            ]
                        }
                    ],
                    "period": {
                        "start": "2012-09-05T14:30:12.000Z",
                        "end": "2013-09-05T14:30:12.000Z"
                    },
                    "payor": {
                        "reference": "Organization/643847",
                        "display": "Aetna Missouri POS - Open"
                    },
                    "class": [
                        {
                            "type": {
                                "coding": [
                                    {
                                        "system": "http://hl7.org/fhir/ValueSet/coverage-class",
                                        "code": "plan"
                                    }
                                ],
                                "text": "plan"
                            },
                            "value": "729823",
                            "name": "Aetna Missouri POS Open"
                        }
                    ]
                }
            }
        ]
    }
      R4_COVERAGE_BY_ENCOUNTER_BUNDLE ||= {
          "resourceType": "Bundle",
          "id": "58ec8fbb-d7dc-44c0-ba48-8769011bd89f",
          "type": "searchset",
          "total": 1,
          "link": [
              {
                  "relation": "self",
                  "url": "http://localhost:3000/r4/2c400054-42d8-4e74-87b7-80b5bd5fde9f/Coverage?encounter=37664919"
              }
          ],
          "entry": [
              {
                  "fullUrl": "http://localhost:3000/r4/2c400054-42d8-4e74-87b7-80b5bd5fde9f/Coverage/37664919-43052850",
                  "resource": {
                      "resourceType": "Coverage",
                      "id": "37664919-43052850",
                      "text": {
                          "status": "generated",
                          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Coverage</b></p><p><b>Status</b>: active</p><p><b>Subscriber</b>: Kelly, Jared</p><p><b>Beneficiary</b>: Strange Ph.D, Steven Vincent</p><p><b>Dependent Number</b>: 787373</p><p><b>Coverage Start Date</b>: Oct 12, 1997  3:33 A.M. CDT</p><p><b>Coverage End Date</b>: Oct 12, 2021  3:33 A.M. CDT</p><p><b>Payor</b>: Miscellaneous Insurance Company</p><p><b>Class</b>: plan: Value: 975842 Name: SWTestComm, group: Value: 12344321 Name: Healthe</p></div>"
                      },
                      "status": "active",
                      "subscriber": {
                          "reference": "Patient/129055900",
                          "display": "Kelly, Jared"
                      },
                      "subscriberId": "88339922",
                      "relationship": {
                          "text": "Daughter"
                      },
                      "beneficiary": {
                          "reference": "Patient/129055865",
                          "display": "Strange Ph.D, Steven Vincent"
                      },
                      "dependent": "787373",
                      "period": {
                          "start": "1997-10-12T08:33:00.000Z",
                          "end": "2021-10-12T08:33:00.000Z"
                      },
                      "payor": [
                          {
                              "reference": "Organization/589743",
                              "display": "Miscellaneous Insurance Company"
                          }
                      ],
                      "class": [
                          {
                              "type": {
                                  "coding": [
                                      {
                                          "system": "http://hl7.org/fhir/ValueSet/coverage-class",
                                          "code": "plan"
                                      }
                                  ],
                                  "text": "plan"
                              },
                              "value": "975842",
                              "name": "SWTestComm"
                          },
                          {
                              "type": {
                                  "coding": [
                                      {
                                          "system": "http://hl7.org/fhir/ValueSet/coverage-class",
                                          "code": "group"
                                      }
                                  ],
                                  "text": "group"
                              },
                              "value": "12344321",
                              "name": "Healthe"
                          }
                      ]
                  }
              }
          ]
      }
    end
  end
  