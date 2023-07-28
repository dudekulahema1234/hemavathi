import { api, LightningElement } from 'lwc';
 import LEAD_OBJECT from '@salesforce/schema/Lead';
 
 import FIRST_NAME from '@salesforce/schema/Lead.FirstName'
 import LAST_NAME from '@salesforce/schema/Lead.LastName'
 import PHONE from '@salesforce/schema/Lead.Phone'
 import EMAIL from '@salesforce/schema/Lead.Email'
 import COMPANY from '@salesforce/schema/Lead.Company'


export default class Smb_lead_lds_record_form_lwc extends LightningElement {
    @api recordId;
    sobject_lead = LEAD_OBJECT ;
    specificfields = [FIRST_NAME,LAST_NAME,PHONE,EMAIL,COMPANY];

}