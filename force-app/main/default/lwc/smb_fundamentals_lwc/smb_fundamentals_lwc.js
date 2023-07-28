import { LightningElement } from 'lwc';

export default class Smb_fundamentals_lwc extends LightningElement {
    gainedscoreVar = null;
    dateValue = null;
    dateTimeValue = null;
    colorValue = null;
    filePathValue = null;
    fetchGainedscore(event){
        this.gainedscoreVar =event.target.value;
    }
    renderDateFunc(event){
       this.dateValue =event.target.value;
    }
    renderDateTimeFunc(event){
       this.dateTimeValue =event.target.value;
    }
    renderColorFunc(event){
       this.colorValue =event.target.value;
    }
    selectFileFunc(event){
       this.filePathValue =event.target.value;
    }
}