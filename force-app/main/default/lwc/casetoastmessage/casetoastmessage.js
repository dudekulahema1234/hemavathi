import { LightningElement ,api} from 'lwc';
import companyProducts from '@salesforce/resourceUrl/company_products';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import Origin from '@salesforce/schema/Case.Origin';
import Status from '@salesforce/schema/Case.Status';
import Subject from '@salesforce/schema/Case.Subject';
import Description from '@salesforce/schema/Case.Description';

export default class Casetoastmessage extends LightningElement {
    carUrl = companyProducts + '/image/jpeg';
    
    Origin=Origin;
    Status=Status;
    Subject=Subject;
    Description=Description;
    @api ObjectApiName='Case';
    createRecord(){
        const toastEvent = new ShowToastEvent({
            title:'Success',
            message:'Record Created Successfully',
            variant:'success'
        });
        this.dispatchEvent(toastEvent);
    }
}


