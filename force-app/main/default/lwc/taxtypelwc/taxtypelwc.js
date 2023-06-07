import { LightningElement,track } from 'lwc';
import getaxes from '@salesforce/apex/taxtypeslwc.getaxes';

import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class taxtype extends LightningElement {
    @track currentContent = 'home';
    @track typevalue = false;    
    @track descriptionValue = false;
    @track rateValue = false;
    @track typeValue = false;
    @track homeclick=false;
    @track datas
    @track searchresults;
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
            this.typeValue = false;
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
            this.typeValue = false;
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
    
    
    changeHandler(event){
        this.datas=event.target.value;
    }
    searchRecord(){
        gettaxes({searchName:this.datas}).then(result=>{
            this.searchresults=result;
            console.log(searchresults);
        })
      .catch(error=>{
        console.log('error occured :'+error)
      })
    }
    resethandler(){
        const inputFields = this.template.querySelectorAll(
            'lightning-input-field'
        );
        if (inputFields) {
            inputFields.forEach(field => {
                field.reset();
            });
        }
        window.open('url','_self');
        document.location.reload(true); 
    }
    updateHandler(){
     const showmsg=new ShowToastEvent({
         title:'Updated Successfully',
         message:'Record is Updated Successfully',
         variant:'success',
         mode:'pester'
     });
     this.dispatchEvent(showmsg);
    }
}
