import { LightningElement, track, wire } from 'lwc';
//import fetchDataFromAPI from '@salesforce/apex/ExternalAPIIntegration.fetchDataFromAPI';

export default class MyComponent extends LightningElement {
    @track data = [];

    @wire(fetchDataFromAPI)
    fetchData({ error, data }) {
        if (data) {
            this.data = JSON.parse(data);
        } else if (error) {
            console.error('Error retrieving data:', error);
        }
    }

    getColorCode(date) {
        const currentDate = new Date();
        const cellDate = new Date(date);
        if (cellDate > currentDate) {
            return 'background-color: yellow';
        } else if (cellDate.getDate() < 25) {
            return 'background-color: red';
        } else {
            return '';
        }
    }
}