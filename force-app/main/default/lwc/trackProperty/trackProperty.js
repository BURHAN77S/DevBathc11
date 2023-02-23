import { LightningElement, track } from 'lwc';

export default class TrackProperty extends LightningElement {
    @track location = {
        city: "Loveland",
        state : "Ohio",
        country : "USA"
    };

    changeHandler(event){
        this.location.city = event.target.value;
    }
}