import { LightningElement } from 'lwc';

export default class Visitormanagement extends LightningElement {
    gainednameVar = null;
    MobileNumberValue = null;
    EmailValue = null;
    MeatingPersonValue = null;
    VisitingPersonValue = null;
    SubmitValue = null;
    fetchGainedname(event){
    this.gainednameVar = event.target.value;
}
RenderMobilNumberFunc(event){
    this.MobileNumberValue = event.target.value;
}
RenderEmailFunc(event){
    this.EmailValue = event.target.value;
}
RenderMeatingPersonFunc(event){
    this.MeatingPersonValue = event.target.value;
}
RenderVisitingPersonFunc(event){
    this.VisitingPersonValue = event.target.value;
}
saveFunc(event){
    alert('save');
    this.SubmitValue = event.target.value;
}
}