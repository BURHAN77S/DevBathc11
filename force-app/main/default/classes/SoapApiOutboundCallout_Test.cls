/**
 * Implementation of Unit Test Class for SOAP API Outbound Callouts
 * Step I : To Crate a new Mock Apex Class which will impelemet WebServiceMock
 * Step II : Inside Response class we will be implementing doInvoke method with bunch of predefined Mtehod parameters
 * Step III : Initialise Response Class of SOAP Utility/Service Class
 * Step IV : Pess Dummy/Fake Response values
 * Step V : asosiate Mock Response to our Unit Test Method
 * Step VI : Invoking SOAP Callout
 * Step VII : System Assertion
 */
@isTest
public with sharing class SoapApiOutboundCallout_Test {
    @isTest
    public static void makeCalculatorCalloutSuccessTest() {
        // Assosiation of Mock response to our Unt Test method

        Test.setMock(WebServiceMock.class, new SoapApiOutboundCalloutCalculatorMock());

        // Invoke Soap Api Callout scenario

        Test.startTest();

        Double result = SoapApiOutboundCallout.makeMultiplcation();

        Test.stopTest();

        System.assertEquals(30.0, result, 'Mock Response returned should be matching');
    }

    @IsTest
    public static void makeParkCalloutSuccesTest(){
        Test.setMock(WebServiceMock.class, new SoapApiOutboundCalloutParkMock());

        Test.startTest();

        List<String> parks = SoapApiOutboundCallout.makeParkCallout();

        Test.stopTest();

        System.assertEquals(3, parks.size(), 'We should be expecting 3 park dummy results from Mock response');
    }
}