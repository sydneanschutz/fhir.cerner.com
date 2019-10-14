---
title: Coverage | R4 API
---

# Coverage

* TOC
{:toc}

## Overview

The Coverage resource provides ................

The following fields are returned if valued:

* [Coverage id](http://hl7.org/fhir/R4/coverage-definitions.html#Coverage.id){:target="_blank"}
* [Status](https://hl7.org/fhir/r4/coverage-definitions.html#Coverage.status){:target="_blank"}
* [Subscriber of policy](https://hl7.org/fhir/r4/coverage-definitions.html#Coverage.subscriber){:target="_blank"}
* [Subscriber id](https://hl7.org/fhir/r4/coverage-definitions.html#Coverage.subscriberId){:target="_blank"}
* [Plan beneficiary](https://hl7.org/fhir/r4/coverage-definitions.html#Coverage.beneficiary){:target="_blank"}
* [Dependent number](https://hl7.org/fhir/r4/coverage-definitions.html#Coverage.dependent){:target="_blank"}
* [Beneficiary relationship to subscriber](https://hl7.org/fhir/r4/coverage-definitions.html#Coverage.relationship){:target="_blank"}
* [Start/end time of the coverage](https://hl7.org/fhir/r4/coverage-definitions.html#Coverage.period){:target="_blank"}
* [Payor](https://hl7.org/fhir/r4/coverage-definitions.html#Coverage.payor){:target="_blank"}
* [Class:](http://hl7.org/fhir/R4/coverage-definitions.html#Coverage.class){:target="_blank"}
   * [Type](http://hl7.org/fhir/R4/coverage-definitions.html#Coverage.class.type){:target="_blank"}
   * [Value](http://hl7.org/fhir/R4/coverage-definitions.html#Coverage.class.value){:target="_blank"}
   * [Name](http://hl7.org/fhir/R4/coverage-definitions.html#Coverage.class.name){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:coverage, :r4) %>
   
## Search

Search for Coverages that meet supplied query parameters:

    GET /Coverages?:parameters

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true)%>

### Parameters

 Name       | Required?                      | Type          | Description
------------|--------------------------------|---------------|-------------------------------------------------------------------------------------------------------
 `patient`  | Yes    | [`reference`] | The patient present at the coverage. Example: `12345`
 `Encounter`| See notes                      | [`reference`] | The patient present at the coverage. Example: `12345`

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Coverage?patient=4342010

#### Response

<%= headers status: 200 %>
<%= json(:r4_coverage_bundle) %>

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Coverage?encounter=123445

#### Response

<%= headers status: 200 %>
<%= json(:r4_coverage_by_encounter_bundle) %>


### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes

### Body Fields

<%= definition_table(:coverage, :create, :r4) %>