import { LightningElement } from 'lwc';

export default class TemplateLoopng2 extends LightningElement {
    accounts = [
        {
            Id : "1",
            Name : "SoftInnovas",
            Industry : "Education",
            Rating : "Hot",
        },
        {
            Id : "2",
            Name : "Universal",
            Industry : "Software",
            Rating : "Warm",
        },
        {
            Id : "3",
            Name : "CloudKicks",
            Industry : "Hardware",
            Rating : "Cold",
        }
    ];
}