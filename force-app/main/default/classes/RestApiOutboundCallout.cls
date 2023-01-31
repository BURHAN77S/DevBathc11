public with sharing class RestApiOutboundCallout {


    public static void getAnimals(){
        // STEP 3 ****
        // Prepare Http Request
        HttpRequest request = new HttpRequest();
        // 3.a. Setting Endpoint URL for Traget System
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        // 3.b. Setting Http Method for Request
        request.setMethod('GET');
        // NOTE: This Endpoint doesnot need User authentication


        // STEP 4 ****
        // Make REST Callout
        Http http = new Http();
        HttpResponse response = http.send(request);


        // STEP 5 ****
        // Getting Http Response
        System.debug('Resposnse Status '+ response.getStatus());
        System.debug('Resposnse Status Code '+ response.getStatusCode());
        System.debug('Resposnse Content/Body '+ response.getBody());

        // STEP 6 ****
        // Parsing JSON Response
        // Condition check for Success response
        if (response.getStatusCode() == 200) {
            String jsonString = response.getBody();
            // Deserailize JSON string to Apex defined data types
            // JSON keys are always String
            // JSON value can be anaything - String, Number, Boolean, Array, Nested Json - So for safeguard of code we use OBJECT - Generic data type of APex
            // JSON are very much same as APex Map - As both store information in Key Value pair
            // JSON.deserailize() return type is Objert. But we are expecting results to be in Map. So to resolve this conflict, we are using Type-casting
            // Typecasting is a fundamental concept of converting Data type from one category to anaother
            Map<String, Object> animalInfo = (Map<String, Object>) JSON.deserializeUntyped(jsonString);
            // animalInfo.get('animals') will return value of Object data type, but if we want to get list of string values. We need to type casting
            List<Object> animalNames = (List<Object>) animalInfo.get('animals');
            for(Object animal : animalNames){
                String animalName = (String) animal;
                System.debug('Final Parse Result : '+ animalName);
            }
        }
    }
    public static void getUser(){
        HttpRequest request = new HttpRequest();
        // 3.a. Setting Endpoint URL for Traget System
        request.setEndpoint('https://reqres.in/api/users/2');
        // 3.b. Setting Http Method for Request
        request.setMethod('GET');
        // NOTE: This Endpoint doesnot need User authentication


        // STEP 4 ****
        // Make REST Callout
        Http http = new Http();
        HttpResponse response = http.send(request);


        // STEP 5 ****
        // Getting Http Response
        System.debug('Resposnse Status '+ response.getStatus());
        System.debug('Resposnse Status Code '+ response.getStatusCode());
        System.debug('Resposnse Body '+ response.getBody());

        // STEP 6 ****
        // Parsing JSON Response
        // Condition check for Success response
        if (response.getStatusCode() == 200) {
            String jsonString = response.getBody();
            Map<String,Object> dataSupportValue = (Map<String,Object>) JSON.deserializeUntyped(jsonString);
            // Convert Object to String -- Similar to Typecasting
            // String dataValue = (String) dataSupportValue.get('data');
            String dataValue = String.valueOf(dataSupportValue.get('data'));
            //Map<String,Object> userInfo = (Map<String,Object>) JSON.deserializeUntyped(dataValue);
            Map<String, Object> userInfo = (Map<String, Object>) dataSupportValue.get('data');
            // Capture User Information
            String emailId = String.valueOf(userInfo.get('email'));
            String firstName = String.valueOf(userInfo.get('first_name'));
            String lastName = String.valueOf(userInfo.get('last_name'));
            Integer userId = Integer.valueOf(userInfo.get('id'));
            System.debug('Email Id : ' + emailId);
            System.debug('Name : ' + firstName + ' ' +  lastName);
            System.debug('Id : ' + userId);
        }
        if(response.getStatusCode() == 200){
            // TASK : Do the Same with Support part
            String jsonString = response.getBody();
            Map<String,Object> dataSupportValue = (Map<String,Object>) JSON.deserializeUntyped(jsonString);
            String supportValue = String.valueOf(dataSupportValue.get('support'));
            Map<String, Object> supportInfo = (Map<String, Object>) dataSupportValue.get('support');
            String url = String.valueOf(supportInfo.get('url'));
            String text = String.valueOf(supportInfo.get('text'));

            System.debug('Url : ' + Url);
            System.debug('text : ' + text);
        
        }
    }
    public static void getListOfUsers(){
        // Preapare Request
        HttpRequest request = new HttpRequest();
        // 3.a. Setting Endpoint URL for Traget System
        request.setEndpoint('https://gorest.co.in/public/v2/users');
        // 3.b. Setting Http Method for Request
        request.setMethod('GET');
        // NOTE: This Endpoint doesnot need User authentication

        // STEP 4 ****
        // Make REST Callout
        Http http = new Http();
        HttpResponse response = http.send(request);
        
        // STEP 5 ****
        // Getting Http Response
        System.debug('Resposnse Status '+ response.getStatus());
        System.debug('Resposnse Status Code '+ response.getStatusCode());
        System.debug('Resposnse Body '+ response.getBody());

        // STEP 6 ****
        // Parsing JSON Response
        // Condition check for Success response
        if (response.getStatusCode() == 200) {
            String jsonString = response.getBody();
            Map<String,Object> goRestData = (Map<String,Object>) JSON.deserializeUntyped(jsonString);
            // Convert Object to String -- Similar to Typecasting
            String dataValue = String.valueOf(goRestData.get('goRest'));
            Map<String, Object> userList = (Map<String, Object>) goRestData.get('goRest');
            // Capture User Information
            Integer userId = Integer.valueOf(userList.get('id'));
            String firstName = String.valueOf(userList.get('first_name'));
            String lastName = String.valueOf(userList.get('last_name'));
            String email = String.valueOf(userList.get('email'));
            String gender = String.valueOf(userList.get('gender'));
            String status = String.valueOf(userList.get('status'));
            System.debug('Id : ' + userId);
            System.debug('Name : ' + firstName + ' ' +  lastName);
            System.debug('Email : ' + email);
            System.debug('Gender : ' + gender);
            System.debug('Stutus : ' + status);
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