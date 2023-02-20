import { LightningElement } from 'lwc';
export default class HelloWorld extends LightningElement {
  greeting = 'Burhan Celik';
  changeHandler(event) {
    this.greeting = event.target.value;
  }
}