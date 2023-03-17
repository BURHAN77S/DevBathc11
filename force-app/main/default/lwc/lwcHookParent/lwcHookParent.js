import { LightningElement } from 'lwc';

export default class LwcHookParent extends LightningElement {
    showChild = true;
    constructor(){
        super();
        console.log('Parent constructor hook is called.');
    }

    connectedCallback(){
        console.log('Parent connectedCallback hook is called.');
    }

    renderedCallback(){
        console.log('Parent renderedCallback hook is called.');
    }

    errorCallback(){
        console.log('Parent errorCallback hook is called.');
    }

    clickHandler(){
        this.showChild = !this.showChild;
    }

    disconnectedCallback(){
        console.log('Parent disconnectedCallback hook is called.');
    }
}