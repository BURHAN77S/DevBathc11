import { LightningElement } from 'lwc';

export default class TwoWayBinding extends LightningElement {
    fullname = "Burhan Celik";
    role;
    roleOptions = [
        { label: 'Salesforce Admin', value: 'Salesforce Admin' },
        { label: 'Salesforce Admin & Developer', value: 'Salesforce Admin & Developer' },
        { label: 'Salesforce Developer', value: 'Salesforce Developer' },
        { label: 'Salesforce Arcitect', value: 'Salesforce Arcitect' },
    ];

    changeHandler(event){
        if(event.target.label ==='Enter your name'){
            this.fullname = event.target.value;
        }else{
            this.role = event.target.value;
        }

    /*changeHandlerCombobox(event){
        this.role = event.target.value;
    }*/
}