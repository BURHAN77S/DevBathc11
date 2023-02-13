/**
 * This Apex Class will serve the purpose of a Mock Response Class for SOAP API Outbound Callout -- calulator Example
 */
@isTest
public with sharing class SoapApiOutboundCalloutCalculatorMock implements WebServiceMock{
    public void doInvoke ( 
        Object stub, 
        Object request,
        Map<String, Object> response,
        String endpoint,
        String soapAction,
        String requestName,
        String responseNS,
        String responseName,
        String responseType
    ) {
        CalculatorSOAPApex.doMultiplyResponse response_x = new CalculatorSOAPApex.doMultiplyResponse();
        // Manually Assigning Fake Response Body
        response_x.return_x = 30.0;

        // Assign Response Instance to the main Response Parameter
        response.put('response_x', response_x);
    }
}