public with sharing class RestApiOutboundCallout {

    public static void getAnimals() {
        //STEP 1 We did it on Salesforce remote site settings
        //STEP 2 We did it on Insomnia App(for checking)
    
        // Step 3 ****
        // Prepare Http Request
        HttpRequest Request = new HttpRequest();
        // 3.a. Setting Http Method for Request
        Request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        // 3.b. Setting Endpoint URL for Traget System
        Request.setMethod('GET');
        // NOTE : This Endpoint does not need User authentication

        // STEP 4 ****

        // Make REST Callout
        Http http = new Http();
        HttpResponse response = http.send(request);

        // STEP 5 ****
        // Getting Http Response
        System.debug('Response Status '+ response.getStatus());
        System.debug('Response Status Code'+ response.getStatusCode());
        System.debug('Response Content/Body '+ response.getBody());

        // STEP 6 ****
        // Parsing JSON Response
        // Condition check for Success response
        if(response.getStatusCode() = 200){
            String jsonString = response.getBody();
            // Deserialise JSON string to Apex defined data types
            // JSON keys are always String
            // JSON value can be anything - String, Number, Boolean, Array, Nested Json - So for safeguard of code we use OBJECT - Generic data type of Apex
            // JSON are very much same as Apex Map - As both store information in Key Value pair.
            // JSON.deserailize() return type is Object. But we are expecting results to bi in Map. So to resolve this onflict, we are using Type-Casting
            // Typecasting is a fundamental concept of converting Data type from one catagory to anather
            Map<String, Object> animalInfo = (Map<String, Object>) JSON.deserializeUntyped(jsonString);
            // animalInfo.get('animals') will return value of Object data type, but if we want to list of string values. We need to type casting.
            List<String> animalNames = (List<String>) animalInfo.get('animals');
            System.debug('Final Parse Result : '+ animalNames);
        }
    }
}

/**
 * OUTBOUND INTEGRATION / CALLOUT  - REST API
 *
 * Implemenatation:
 *  Step I : Create Remote Site Setting
 *  Step II : Dry/Mock Run with Postman/Insomnia to replicate our Callout Scenario
 *  Step III : Create Http Request
 *          a. Endpoint URL
 *          b. HTTP Method - Define the intent of Callout request
 *              GET (Fetch), POST (Create), PATCH (Update), PUT (Update/Replace), DELETE
 *          c. Authentication - User credentials
 *  Step IV : Sending Http Request
 *  Step V : Getting Http Response
 *          a. Status Code
 *              200 (Success Response Code for GET Request)
 *              201 (Success Response Code for POST/PUT Request)
 *              204 (Success Response Code for DELETE Request)
 *              401 (Error Code for Unauthrozed Access)
 *              404 (File/URL not accessible)
 *          b. Response Content - Typically JSON
 *  Step VI : Parsing JSON Resposne
 *          i. Manually Deserialising JSON Resposne. Then Looping through to find the correct key and Value
 *          ii. Using Apex Wrapper Class for deasrailisation
 *
 *
 * 
 * PreRequistive :
 *  1. Target External System Endpoint URL
 *  2. User Credentials
 *  3. API Documentation/Guide
 *
 * */
