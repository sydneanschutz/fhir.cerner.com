module Cerner
  module Resources

    DSTU2_CONDITION_PROBLEM_RESOURCE = {
        "resourceType": "Condition",
        "id": "p73077203",
        "meta": {
            "versionId": "73079095",
            "lastUpdated": "2020-04-05T04:00:46.000Z"
        },
        "text": {
            "status": "generated",
            "div": "<div><p><b>Condition</b></p><p><b>Patient</b>: SMART, NANCY</p><p><b>Problem</b>: Pregnant, Patient currently pregnant (finding)</p><p><b>Clinical Status</b>: Resolved</p><p><b>Verification Status</b>: Confirmed</p><p><b>Onset</b>: Jun 12, 2019</p><p><b>Resolved</b>: Apr  4, 2020  5:00 P.M. UTC</p></div>"
        },
        "patient": {
            "reference": "Patient/12724066",
            "display": "SMART, NANCY"
        },
        "asserter": {
            "reference": "Practitioner/683925",
            "display": "Cerner Test, Women's Health - Nurse Cerner"
        },
        "dateRecorded": "2020-03-05",
        "code": {
            "coding": [
                {
                    "system": "http://snomed.info/sct",
                    "code": "77386006",
                    "display": "Patient currently pregnant (finding)",
                    "userSelected": true
                }
            ],
            "text": "Pregnant"
        },
        "category": {
            "coding": [
                {
                    "system": "http://argonaut.hl7.org",
                    "code": "problem",
                    "display": "Problem"
                }
            ],
            "text": "Problem"
        },
        "clinicalStatus": "resolved",
        "verificationStatus": "confirmed",
        "onsetDateTime": "2019-06-12",
        "abatementDateTime": "2020-04-04T17:00:00.000Z"
    }

    # TODO: No records
    DSTU2_CONDITION_DIAGNOSIS_RESOURCE = {
      "resourceType": "Condition",
      "id": "d35686553",
      "meta": {
        "versionId": "35686553",
        "lastUpdated": "2016-06-27T19:02:31.000Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Condition&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Smart, Timmy&lt;/p&gt;&lt;p&gt;&lt;b&gt;Diagnosis&lt;/b&gt;: Ear Infection (Right)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Clinical Status&lt;/b&gt;: active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Verification Status&lt;/b&gt;: Unknown&lt;/p&gt;&lt;p&gt;&lt;b&gt;Onset&lt;/b&gt;: 2016-06-27&lt;/p&gt;&lt;/div&gt;"
      },
      "patient": {
        "reference": "Patient/4342012",
        "display": "Smart, Timmy"
      },
      "encounter": {
        "reference": "Encounter/4027933"
      },
      "asserter": {
        "reference": "Practitioner/1912007",
        "display": "Forrest, Fhir"
      },
      "dateRecorded": "2016-06-27",
      "code": {
        "text": "Ear Infection (Right)"
      },
      "category": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/condition-category",
            "code": "diagnosis",
            "display": "Diagnosis"
          }
        ],
        "text": "Diagnosis"
      },
      "clinicalStatus": "active",
      "verificationStatus": "unknown",
      "onsetDateTime": "2016-06-27"
    }

    # TODO: No records
    DSTU2_CONDITION_HEALTH_CONCERN_RESOURCE = {
      "resourceType": "Condition",
      "id": "b5777d90-52f0-42e8-9f68-485c4d2375a7",
      "meta": {
        "versionId": "b5777d90-52f0-42e8-9f68-485c4d2375a7",
        "lastUpdated": "2019-06-10T19:26:44.000Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Condition&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: SMART Jr, FRED RICK&lt;/p&gt;&lt;p&gt;&lt;b&gt;Health Concern&lt;/b&gt;: Patient is afraid of falling                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        &lt;/p&gt;&lt;p&gt;&lt;b&gt;Clinical Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Verification Status&lt;/b&gt;: Confirmed&lt;/p&gt;&lt;p&gt;&lt;b&gt;Onset&lt;/b&gt;: Jun 10, 2019&lt;/p&gt;&lt;p&gt;&lt;b&gt;Resolved&lt;/b&gt;: False&lt;/p&gt;&lt;/div&gt;"
      },
      "patient": {
        "reference": "Patient/4478007",
        "display": "SMART Jr, FRED RICK"
      },
      "asserter": {
        "reference": "Patient/4478007",
        "display": "SMART Jr, FRED RICK"
      },
      "dateRecorded": "2019-06-10",
      "code": {
        "text": "Patient is afraid of falling                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        "
      },
      "category": {
        "coding": [
          {
            "system": "http://argonaut.hl7.org",
            "code": "health-concern",
            "display": "Health Concern"
          }
        ],
        "text": "Health Concern"
      },
      "clinicalStatus": "active",
      "verificationStatus": "confirmed",
      "onsetDateTime": "2019-06-10",
      "abatementBoolean": false
    }

    # TODO: Update IDs for Diagnosis and Health Concern
    DSTU2_CONDITION_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "5a31a14a-9740-459c-bc52-b105b81ebebc",
      "type": "searchset",
      "total": 3,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition?patient=12724066"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/d35686553",
          "resource": DSTU2_CONDITION_DIAGNOSIS_RESOURCE
        },
        {
          "fullUrl": "https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/p73077203",
          "resource": DSTU2_CONDITION_PROBLEM_RESOURCE
        },
        {
          "fullUrl": "https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/b5777d90-52f0-42e8-9f68-485c4d2375a7",
          "resource": DSTU2_CONDITION_HEALTH_CONCERN_RESOURCE
        }
      ]
    }

    DSTU2_CONDITION_BUNDLE_BY_ID ||= {
      "resourceType": "Bundle",
      "id": "5a31a14a-9740-459c-bc52-b105b81ebebc",
      "type": "searchset",
      "total": 3,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition?_id=d35686553,p73077203,b5777d90-52f0-42e8-9f68-485c4d2375a7"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/d35686553",
          "resource": DSTU2_CONDITION_DIAGNOSIS_RESOURCE
        },
        {
          "fullUrl": "https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/p73077203",
          "resource": DSTU2_CONDITION_PROBLEM_RESOURCE
        },
        {
          "fullUrl": "https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/b5777d90-52f0-42e8-9f68-485c4d2375a7",
          "resource": DSTU2_CONDITION_HEALTH_CONCERN_RESOURCE
        }
      ]
    }

    DSTU2_CONDITION_PROBLEM_CREATE ||= {
      "resourceType": "Condition",
      "patient": {
        "reference": "Patient/12724066"
      },
      "code": {
        "text": "Freetext Condition"
      },
      "category": {
        "coding": [
          {
            "system": "http://argonaut.hl7.org",
            "code": "problem",
            "display": "Problem"
          }
        ],
        "text": "Problem"
      },
      "clinicalStatus": "resolved",
      "verificationStatus": "differential",
      "abatementDateTime": "2017-01-01T00:00:00Z"
    }

    DSTU2_CONDITION_DIAGNOSIS_CREATE ||= {
      "resourceType": "Condition",
      "patient": {
        "reference": "Patient/12724066"
      },
      "code": {
        "text": "Freetext Diagnosis"
      },
      "category": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/condition-category",
            "code": "diagnosis",
            "display": "Diagnosis"
          }
        ],
        "text": "Diagnosis"
      },
      "clinicalStatus": "active",
      "verificationStatus": "differential",
      "encounter": {
        "reference": "Encounter/97953477"
      }
    }

    DSTU2_CONDITION_PROBLEM_UPDATE ||= {
      "resourceType": "Condition",
      "id": "p73077203",
      "meta": {
        "versionId": "73079095",
        "lastUpdated": "2017-02-28T21:26:44.000Z"
      },
      "patient": {
        "reference": "Patient/12724066"
      },
      "asserter": {
        "reference": "Practitioner/683925"
      },
      "dateRecorded": "2020-03-05",
      "code": {
          "coding": [
              {
                  "system": "http://snomed.info/sct",
                  "code": "77386006",
                  "display": "Patient currently pregnant (finding)",
                  "userSelected": true
              }
          ],
          "text": "Pregnant"
      },
      "category": {
        "coding": [{
          "system": "http://argonaut.hl7.org",
          "code": "problem",
          "display": "Problem"
        }],
        "text": "Problem"
      },
      "clinicalStatus": "resolved",
      "verificationStatus": "differential",
      "abatementDateTime": "2020-04-04T17:00:00.000Z"
    }

    # TODO: Update IDs for Diagnosis
    DSTU2_CONDITION_DIAGNOSIS_UPDATE ||= {
      "resourceType": "Condition",
      "id": "d43534563",
      "meta": {
        "versionId": "43538555",
        "lastUpdated": "2019-11-14T17:29:32.000Z"
      },
      "patient": {
        "reference": "Patient/1316020"
      },
      "encounter": {
        "reference": "Encounter/2457909"
      },
      "asserter": {
        "reference": "Practitioner/1"
      },
      "dateRecorded": "2019-11-14",
      "code": {
        "text": "Freetext Diagnosis"
      },
      "category": {
        "coding": [{
          "system": "http://hl7.org/fhir/condition-category",
          "code": "diagnosis",
          "display": "Diagnosis"
        }],
        "text": "Diagnosis"
      },
      "clinicalStatus": "resolved",
      "verificationStatus": "differential",
      "onsetDateTime": "2017-02-28T00:00:00.000Z"
    }

  end
end
