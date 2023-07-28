import { LightningElement } from 'lwc';

export default class Smbvariabledeclarationslwc extends LightningElement {
    hardcodedVar = 'This is value has been declared as hardcode value assigned from js file';
OnLoadVar = null;
onClickVar = null;
onClicklabelVar = null;    
connectedCallback(){
    console.log('--onload--');
this.OnLoadVar = 'This value is assigned while loading the lwc cmp by connectedcallback function';

}
handleClick(event){
    this.onClickVar ='This value is assigned while on click of the button';   
this. onClicklabelVar = event.target.label;
}
}