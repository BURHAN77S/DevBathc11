import { LightningElement } from 'lwc';

export default class ButtonBasic extends LightningElement {
    showContent = false;
    labelButton = "Show Content";

    clickhandler() {
        if(this.showContent){
            this.showContent = false;
            this.labelButton = "Show Content";
        }else{
            this.showContent = true;
            this.labelButton = "Hide Content";
        }
    }
    //this.clickedButtonLabel = event.target.label;
}