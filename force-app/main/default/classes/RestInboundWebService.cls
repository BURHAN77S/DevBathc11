/**
 * External System/Insomnia/Workbench   -->  Salesforce (Inbound Integration)
 * AGENDA: Build Custom APex REST Web Services -- Example: Case Manager
 * Http Methods - GET, POST, PATCH, DELETE, PUT
 *
 * Whenever we are setting up any Inbound Integration with Salesforce, it is mandatory to do following steps
 * 1. Authorization - Create Connected App - (Api Access Monitoring Tool)
 * 2. Authentication - Create User Account -  (Username + Password)
 *
 * When to build Custom Apex REST WebServices?
 * Check in Salesforce REST API Documentation, if you think Feature requested by Business is not possible through Standard APIs provided by Salesforce
 * Then only resort to create a Custom WebService
 * Documention : https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_list.htm
 *
 * Testing Endpoint: https://abinash-panigrahi-0113-dev-ed.my.salesforce.com/services/apexrest/InboundCaseManager/
 * How to build Testing Endpoint URL?
 * 1. Identify Domain - Setup => My Domain . i.e, abinash-panigrahi-0113-dev-ed.my.salesforce.com
 * 2. /services/apexrest/ - This is Constant url mapping, which will always remains the same
 * 3. urlMapping provided at RestResource annotation, i.e. InboundCaseManager
 *
 * Access Modifier of WebService Apex Class needs to be Global when exposing Custom REST Api
 * So it can be access externally
 */
@RestResource(urlmapping='/InboundCaseManager/*')
global with sharing class RestInboundWebService {

    /**
     * This method will enable feature where we will expose/send Case record by their Salesforce Id
     * HttpMethod - GET
     * Return type of method will be mapped directly to Response Body
     * Endpoint - https://abinash-panigrahi-0113-dev-ed.my.salesforce.com/services/apexrest/InboundCaseManager/xxxxxxxxxxx
     * In GET Request, Input parameters are always provided at the URL level
     */
    @HttpGet
    global static Case getCaseById(){
        // Capture Http Request details sent by the External Syetm during Inbound Integration
        RestRequest request = RestContext.request;
        System.debug('HTTP Request Details sent by External SYstem ' + request);
        System.debug('Endpoint ' + request.requestURI);
        System.debug('Http Method ' + request.httpMethod);
        System.debug('Header ' + request.headers);
        // Grab Case Record ID from the URL
        String caseId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        System.debug('Case Record Id: '+ caseId);
        // SOQL to fetch Case record information
        // Best Pratice: ALways use With SEcurity Enforced whenever writing a SOQL Query
        Case result = [SELECT Id, Description, CaseNumber, Status, Origin, Subject, Priority FROM Case WHERE Id =: caseId WITH SECURITY_ENFORCED];
        System.debug('Case Record : '+ result);
        // Return Case information
        return result;
    }

    @HttpDelete
    global static void deleteCase(){

    }
}