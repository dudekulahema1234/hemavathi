import { LightningElement, wire } from 'lwc';
import SAMPLEMC from "@salesforce/messageChannel/SampleMessageChannel__c";
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import {subscribe, MessageContext, APPLICATION_SCOPE, unsubscribe} from 'lightning/messageService';
export default class LmsComponentX extends LightningElement {
    recievedMessage
    subscription
    @wire(MessageContext)
    context

    connectedCallback(){
        this.subscribeMessage()
    }

    subscribeMessage(){
        //subscribe(messageContext, messageChannel, listener, subscriberOptions)
        this.subscription= subscribe(this.context, SAMPLEMC, (message)=>{this.handleMessage(message)}, {scope:APPLICATION_SCOPE})
    }

    handleMessage(message){
        this.recievedMessage = message.lmsData.value? message.lmsData.value :'NO Message published'
    }

    unsubscribeMessage(){
        unsubscribe(this.subscription)
        this.subscription = null
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
            title:'Saved Successfully',
            message:'Record is Saved Successfully',
            variant:'success',
            mode:'pester'
        });
        this.dispatchEvent(showmsg);
        window.open('url','_self');
        document.location.reload(true); 
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