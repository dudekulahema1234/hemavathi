import { LightningElement, track } from 'lwc';
import getTaxesData from '@salesforce/apex/taxtype1lwc.getTaxesData';

export default class CustomRecordSearch extends LightningElement {
    searchKey;
    @track taxes;
    //This Funcation will get the value from Text Input.
    handelSearchKey(event){
        this.searchKey = event.target.value;
    }

    //This funcation will fetch the Account Name on basis of searchkey
    SearchAccountHandler(){
        //call Apex method.
        getTaxesData({textkey: this.searchKey})
        .then(result => {
                this.taxes = result;
        })
        .catch( error=>{
            this.taxes = null;
        });

    }
    cols = [
        {label:'Tax Name', fieldName:'Name' , type:'Text'} ,
        {label:'Tax Rate', fieldName:'Tax_Rate__c' , type:'Currency'} ,
        {label:'Tax Type Name', fieldName:'Tax_Type_Name__c' , type:'Text'}
              
    ]
}