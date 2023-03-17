import { LightningElement } from 'lwc';

export default class LwcHookChild extends LightningElement {
    constructor(){
        super();
        console.log('Child constructor hook is called.');
    }

    connectedCallback(){
        console.log('Child connectedCallback hook is called.');
        throw new Error("Error encountered at Child.");
    }

    renderedCallback(){
        console.log('Child renderedCallback hook is called.');
    }

    errorCallBack(){
        console.log('Child errorCallback hook is called.');
    }
}