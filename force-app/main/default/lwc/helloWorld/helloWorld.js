import { LightningElement } from 'lwc';
export default class HelloWorld extends LightningElement {
  fullName = 'Burhan Celik';
  age = 46;
  location = {
    city : 'Loveland',
    state : 'Ohio',
    country : 'Usa'
  };
  sum (a, b){
    return a + b;
  }
}