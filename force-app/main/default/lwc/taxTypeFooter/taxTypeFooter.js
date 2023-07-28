import { LightningElement,track,wire} from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class mainPagetaxtype extends LightningElement {
    @track currentContent = 'home';
    @track typevalue = false;  
    @track descriptionValue = false;  
    @track rateValue = false;
    @track typeValue = false;
    @track homeclick=false;
    @track datas
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