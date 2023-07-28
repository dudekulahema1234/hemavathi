import { LightningElement } from 'lwc';

export default class Smb_fundamentals_lwcone extends LightningElement {
    firstInput = null;
    secondInput = null;
    thirdInput = null;

    firstInputFunction(event){
    this.firstInput = event.target.value; 
    }
    secondInputFunction(event){
    this.secondInput = event.target.value;
    }
    thirdInputFunction(event){
    this.thirdInput = event.target.value;
    }
    handleCalculate(event){
        const num1 = parseInt(this.firstInput);
        const num2 = parseInt(this.secondInput);
        const num3 = parseInt(this.thirdInput);
         if(num1>num2 && num1>num3){
            alert('first Number Input is greater than among others inputs');
         }else if(num2>num1 && num2>num3){
            alert('second Number Input is greater than among others inputs'); 
        }else if(num3>num1 && num3>num2){
            alert('third Number Input is greater than among others inputs'); 
}
 }
    handlereset(event){

    }


}