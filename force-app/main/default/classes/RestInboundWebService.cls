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
 * Testing Endpoint: https://burhancelikco-dev-ed.develop.lightning.force.com/services/apexrest/InboundCaseManager/
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
     * Endpoint - https://burhancelikco-dev-ed.develop.my.salesforce.com/services/apexrest/InboundCaseManager/500Do000001bYfFIAU
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
    /**
     * This method is going to delete a partucular Case record based on the Salesforce Id. This functionality will be invoked/initated by External system.
     * Endpoint - https://burhancelikco-dev-ed.develop.my.salesforce.com/services/apexrest/InboundCaseManager/500Do000001bYfFIAU
     * HTTP Method - DELETE
     * Create Success & Fail Response with dynamic Status Code and Body
     */

    @HttpDelete
    global static void deleteCase(){
        // To fetch Rest Repuest sent bye External System
        RestRequest request = RestContext.Request;
        System.debug('HTTP Request Details sent by External SYstem ' + request);
        System.debug('Endpoint ' + request.requestURI);
        System.debug('Http Method ' + request.httpMethod);
        System.debug('Header ' + request.headers);
        // Find Case Id info from the URL Endpoint
        String caseId = request.requestURI.substring(request.requestURI.lastIndexOf('/') +1);
        System.debug('Case Record Id: ' + caseId);
        // Fetch Case record using SOQL
        Case matchingResult = [select Id from case where Id =: caseId WITH SECURITY_ENFORCED LIMIT 1];
        // Build Custom Response
        RestResponse response = RestContext.Response;
        if(matchingResult != null){
            // Success Scenario
            delete matchingResult;
            // Success Code for Delete operation => 204
            response.statusCode = 204;
            // Response Body always expect data to be present in Binary format
            response.responseBody = Blob.valueOf('Case Record was successfully deleted! :) ');
        }else{
            // Error Scenario
            response.statusCode = 404;
            response.responseBody = Blob.valueOf('Error Encountered, Record Does nat exist.');

        }
    }
        
    /**
     * This method is going to create Case record by getting all required field values from External Sytem request
     * Http Method - POST
     * Testing Endpoint - https://burhancelikco-dev-ed.develop.my.salesforce.com/services/apexrest/InboundCaseManager/500Do000001bYfFIAU
     * Request Body - { 'subject' : 'xxx', 'description' : 'xxx', 'status' : 'xxx', 'priority' : 'xxx', 'origin' : 'xxx'  }
     * Return Custom meaningful JSON response based on Success/Failure
     * Response Body - { 'id' : 'xxx', 'status' : 'Success/Failure', 'errorMessage' : 'xxx' }
     */
    @HttpPost
    global static void createCase(String subject, String description, String status, String priority, String origin){
        // Get Request content sent by External System
        RestRequest request = RestContext.request;
        System.debug('HTTP Request Details sent by External SYstem ' + request);
        System.debug('Endpoint ' + request.requestURI);
        System.debug('Http Method ' + request.httpMethod);
        System.debug('Header ' + request.headers);
        System.debug('Request Body ' + request.requestBody);

        // Create Case Sobject instance
        Case newRec = new Case();
        newRec.Subject = subject;
        newRec.Description = description;
        newRec.Status = status;
        newRec.Priority = priority;
        newRec.Origin = origin;

        // Prepare Custom Response
        RestResponse response = new RestResponse();
        response.addHeader('Content-Type', 'application/json');
        PostResponseWrapper responseContent = new PostResponseWrapper();

        // Insertion Case record
        try {
            insert newRec;

            // Success Response
            response.statusCode = 201;
            // Prepare JSON Response Body
            responseContent.id = newRec.Id;
            responseContent.status = 'Success';
            responseContent.errorMessage = '';

        } catch (Exception ex) {
            // Error Response
            response.statusCode = 404;
            // Prepare JSON Response Body
            responseContent.id = '';
            responseContent.status = 'Failure';
            responseContent.errorMessage = ex.getMessage();
        }

        // Populate Response Body
        String responseBody = JSON.serialize(responseContent);
        response.responseBody = Blob.valueOf(responseBody);

    }

    // Wrapper Class for Response Building
    public class PostResponseWrapper {
        public String id;
        public String status;
        public STring errorMessage;
    }
}