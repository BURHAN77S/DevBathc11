public with sharing class AccountAction {
    @InvocableMethod( label = 'Update Account Revenue' 
    description = 'Summation of Child Opportunity Amount displayed on Parent Account Annual Revenue' 
    category = 'Account'
    )
    public static void updateAccountRevenue(list<id> oppIds){
        //fetch parent account information from oppIds
        //note: use the with security_enforced clause to enable field and object level security permissions checking for soql qi=ueries in apex code.
        opportunity newlyCreatedOpp= [select AccountId from Opportunity where id=: oppIds[0] with security_enforced limit 1];
        id parentAccountId= newlyCreatedOpp.AccountId;
        //fetch all child opportunity under that parent account using SOqL

        
        //cretae a total amount variable

        list<opportunity> childOpps= [select Amount from Opportunity Where AccountId =: parentAccountId with security_enforced];
        decimal totalAmount = 0;

        //iterate over all child opportunity and add up amount value

        for(Opportunity opp : childOpps){
            // Amount is not null and have some value then only do the summation
            if(opp.Amount != null && opp.Amount > 0) {
                totalAmount = totalAmount + opp.Amount;
            }
        }
        //update parent account's annual revenue field with totalAmount field
        // NOTE : Creating an instance of SObject Type Account (AnnualRevenue = totalAmount);
        Account parentAcc = new Account ();
        parentAcc.Id = parentAccountId;
        parentAcc.AnnualRevenue = totalAmount;
        update parentAcc;
    }
}

/**
* Annotate the method with @InvocableMethod
* The invocable method must be static and public or global
* Only one method in a class can have the invocable method annotation
* Triggers can't reference invocable methods
* Invocable method doesn't accept more than one argument as a method parameter
* Other annotations cant be used with invocable method annotation
 */