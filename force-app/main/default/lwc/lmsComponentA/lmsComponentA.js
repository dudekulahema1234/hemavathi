import { LightningElement,wire } from 'lwc';
import SAMPLEMC from "@salesforce/messageChannel/SampleMessageChannel__c"
import {MessageContext, publish} from 'lightning/messageService'
import  getaxesone from '@salesforce/apex/taxtypeslwc.getaxesone'
export default class LmsComponentA extends LightningElement {
    recordIdVal
    headings = ["Name", "Description", "Code", "Select"]
    fullTableData=[]
    filteredData=[]
    datascoll;
    timer
    filterBy= "Name"
    @wire(getaxesone)
    contactHandler({data,error}){
        if(data){
            console.log(data)
            this.fullTableData = data
            this.filteredData = data
        }
        if(error){
            console.log(error)

        }
    }
    get FilterByOptions(){
        return[
            {label:"All", value:'All'},
            {label:"Code", value:'Code__c'},
            {label:"Name", value:'Name'}
        ]
    }
    filterbyHandler(event){
        this.filterBy = event.target.value
    }
    filterHandler(event){
        const {value} = event.target
        Window.clearTimeout(this.timer)
        if(value){
            this.timer = Window.setTimeOut(()=>{
            console.log(value)
            this.filteredData = this.fullTableData.filter(eachObj=>{
                if(this.filterBy === 'All'){
                    /**Below logic will filter each and every property of object */
                    return Object.keys(eachObj).some(key=>{
                        return eachObj[key].toLowerCase().includes(value)
                    })
                } else {
                    /**Below logic will filter only selected fields */
                    const val = eachObj[this.filterBy] ? eachObj[this.filterBy]:''
                     return val.toLowerCase().includes(value)

                }
            })
            }, 500)
        } else {
            this.filteredData = [...this.fullTableData]
        }        
    }
    @wire(MessageContext)
    context 
    
    publishMessage(event){
        const selectedId=event.target.value;
        this.recordIdVal = selectedId; 
        console.log(this.recordIdVal) ;
         
        const message={
            lmsData:{
                value: this.recordIdVal
 }
 }
 //publish(messageContext, messageChannel, message)
 publish(this.context, SAMPLEMC, message)

    }
     /*updateDataHandler(event){
        this.visibleData = [...event.detail.records]
        console.log(event.detail.records)
    }*/
}