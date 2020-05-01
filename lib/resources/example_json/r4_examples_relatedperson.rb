module Cerner
    module Resources
  
    R4_RELATEDPERSON_ENTRY ||= {
      "resourceType": "RelatedPerson",
      "id": "3440007-4768010",
      "meta": {
        "versionId": 30,
        "lastUpdated": "2019-01-09T15:25:32.000Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Related Person&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: Bobo, TEST A&lt;/p&gt;&lt;p&gt;&lt;b&gt;DOB&lt;/b&gt;: Feb 17, 1989&lt;/p&gt;&lt;&gt;&lt;b&gt;Gender&lt;/b&gt;: male&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Bobo, Bob&lt;/p&gt;&lt;/div&gt;"
      },
      "identifier": [
        {
          "use": "usual",
          "type": {
            "coding": [
              {
                "system": "https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4",
                "code": "36322657",
                "display": "Federated Person Principal",
                "userSelected": true
              },
              {
                "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                "code": "AN",
                "display": "Account number",
                "userSelected": false
              }
            ],
            "text": "Federated Person Principal"
          },
          "system": "urn:oid:2.16.840.1.113883.3.13.6",
          "value": "URN:CERNER:IDENTITY-FEDERATION:REALM:687F29DD-69DD-4DE5-ACB1-FD8A2241EF3A:PRINCIPAL:ABZ12JDJIE3",
          "period": {
            "start": "2019-01-02T05:00:00.000Z"
          }
        },
        {
          "use": "usual",
          "type": {
            "coding": [
              {
                "system": "https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4",
                "code": "36322657",
                "display": "Federated Person Principal",
                "userSelected": true
              },
              {
                "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                "code": "AN",
                "display": "Account number",
                "userSelected": false
              }
            ],
            "text": "Federated Person Principal"
          },
          "system": "urn:oid:2.16.840.1.113883.3.13.6",
          "value": "URN:CERNER:IDENTITY-FEDERATION:REALM:ec2458f2-1e24-41c8-b71b-0e701af7583d:PRINCIPAL:AEIDKDKDDLKDSLSDK23",
          "period": {
            "start": "2017-09-26T05:00:00.000Z",
            "end": "2019-01-02T05:00:00.000Z"
          }
        }
      ],
      "active": true,
      "patient": {
        "reference": "Patient/4768010",
        "display": "Bobo, Bob"
      },
      "name": [
        {
          "use": "official",
          "text": "Bobo, TEST A",
          "family": "Bobo",
          "given": [
            "TEST",
            "A"
          ],
          "period": {
            "start": "2017-10-05T17:02:53.000Z"
          }
        }
      ],
      "telecom": [
        {
          "system": "Phone",
          "value": "8162013072",
          "use": "Home",
          "period": {
            "start": "2017-10-05T17:05:17.000Z"
          }
        },
        {
          "system": "Email",
          "value": "tester@email.com",
          "use": "Home",
          "period": {
            "start": "2017-11-21T19:23:58.000Z"
          }
        },
        {
          "system": "Email",
          "value": "kesfk2@mail.missouri.edu",
          "use": "Home",
          "period": {
            "start": "2017-10-05T16:55:29.000Z"
          }
        }
      ],
      "gender": "male",
      "birthDate": "1989-02-17",
      "address": [
        {
          "use": "home",
          "text": "2800 Rockcreek Pkwy\nRandolph, MO 64117\nUSA",
          "line": [
            "2800 Rockcreek Pkwy"
          ],
          "city": "Randolph",
          "district": "Clay",
          "state": "MO",
          "postalCode": "64117",
          "country": "USA",
          "period": {
            "start": "2017-10-05T17:05:17.000Z"
          }
        }
      ],
      "communication": [
        {
          "preferred": "true",
          "language": {
            "coding": [
              {
                "system": "https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/36",
                "code": "151",
                "display": "English",
                "userSelected": true
              },
              {
                "system": "urn:ietf:bcp:47",
                "code": "en",
                "display": "English",
                "userSelected": false
              }
            ],
            "text": "English"
          } 
        }
      ]
    }
        
    R4_RELATEDPERSON_BUNDLE ||= {
      "id": "e8274221-8809-4f7a-ba44-dc4ac55a5318",
      "resourceType": "Bundle",
      "type": "searchset",
      "total": 1,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson?_id=3440007-4768010"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson/3440007-4768010",
          "resource": R4_RELATEDPERSON_ENTRY
        }
      ]
    }
  end
end
