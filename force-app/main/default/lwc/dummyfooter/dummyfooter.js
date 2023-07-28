import { LightningElement,track,wire} from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
//import getaxesone from '@salesforce/apex/taxtypeslwc.getaxesone';
//import getaxesone from '@salesforce/apex/taxtypeslwc.getaxesone';
export default class mainPagetaxtype extends LightningElement {
    @track currentContent = 'home';
    @track typevalue = false;  
    @track descriptionValue = false;  
    @track rateValue = false;
    @track typeValue = false;
    @track homeclick=false;
    @track datas
    
  //@track searchresults;
   // @track rateresults;
    /*@track triggerValue = false;
    @track jqueryJavascriptValue = false;
    @track salesforceLwcValue = false;
    @track showdestination=false;*/
    
 
 changeHandleAction(event) {
        const selected = event.detail.name;        
 
        this.currentContent = selected;
        if (selected == 'home'){
            this.homeclick = true;
            
        }else{
            this.homeclick = false;
        }
 
        if (selected == 'taxtype'){
            this.typevalue = true;
        }else{
            this.typevalue = false;
        }
 
        if (selected == 'description'){
            this.descriptionValue = true;
        }else{
            this.descriptionValue = false;
        }
 
        if (selected == 'taxrate'){
            this.rateValue = true;
        }else{
            this.rateValue = false;
        }
        if (selected == 'taxtypes'){
            this.typeValue = true;
        }else{
            this.typeValue  = false;
         }
      
    }
    showdest(){
        this.showdestination=true;
    }
    successhandler(){
const show=new ShowToastEvent({
    title:'Created Successfully',
    message:'Record is created',
    variant:'success',
    mode:'pester'
});
this.dispatchEvent(show);
window.open('url','_self');
document.location.reload(true);
}   
}