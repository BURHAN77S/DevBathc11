/**
 * SOAP (Simple Oject Access Protocol) - Earlier framework of doing Web Commincation/Integration, Secure way of data transfering, XML Messaging Format only
 * Outbound Callout using SOAP Api - 4 Steps of Implementation
 * Step 1 : Create Remote Site Setting - to whitelist Domain
 * Step 2 : WSDL (Web Service Decription Language) - Get WSDL from External System
 *  a. endpoint Url, Features available, Input parameters, (Request), Response - XML format
 * Step 3 : Convert WSDL to Apex Class using Salesforce framework
 * Step 4 : Use/Consume the SOAP Apex CLass to make callout
 * 
 */
public with sharing class SoapApiOutboundCallout {
    /**
     * Step 4: SOAP API Callout to Calculator Heroku App to do multiplication
     */

    public static Double makeMultiplcation() {
        // Create Instance of INNER CLASS of WSDL Apex
        // All features of SOAP are non-static methods
        CalculatorSOAPApex.CalculatorImplPort calc = new CalculatorSOAPApex.CalculatorImplPort();
        // Preparing Repuest parameters
        
        Double num1 = 8.0;
        Double num2 = 2.0;
        // Sending SOAP Api callout to calculator Heroku App
        // Fething response
        Double result = calc.doMultiply(num1, num2);
        System.debug('Calculator Request Parameters for Multiply Feature is : '+num1 + ' * ' + num2);
        System.debug('Calculator Response for Multiply Feature is : '+result);
        return result;
    }
    public static list<string> makeParkCallout(){
        parksSOAPApex.ParksImplPort park= new parksSOAPApex.ParksImplPort();
        String inputCountry='India';
        list<string> parkNames= park.byCountry(inputCountry);
        system.debug('Park SOAP API Response for country-wise Feature is: ' + parkNames);
        return parkNames;
    }
}
