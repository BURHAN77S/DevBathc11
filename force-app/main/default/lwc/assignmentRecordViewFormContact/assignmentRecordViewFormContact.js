import { api, LightningElement } from 'lwc';

import CONTACT_OBJECT from '@salesforce/schema/Contact';
import NAME from '@salesforce/schema/Contact.Name';
import ACCOUNTNAME from '@salesforce/schema/Contact.AccountId';
import PHONE from '@salesforce/schema/Contact.Phone';
import LEADSOURCE from '@salesforce/schema/Contact.LeadSource';
import DEPARTMENT from '@salesforce/schema/Contact.Department';
import BIRTHDATE from '@salesforce/schema/Contact.Birthdate';

export default class AssignmentRecordViewFormContact extends LightningElement {
    objectName= CONTACT_OBJECT;
    @api recordId;

    fields={
        name: NAME,
        accountName: ACCOUNTNAME,
        phone: PHONE,
        leadSource:LEADSOURCE,
        department:DEPARTMENT,
        birthdate:BIRTHDATE
    }
}