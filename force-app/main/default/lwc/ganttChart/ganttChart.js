import { LightningElement } from 'lwc';

export default class GanttChart extends LightningElement {
  months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
  weeks = ['Week 1', 'Week 2', 'Week 3', 'Week 4'];

  monthlyData = [
    { month: 'Jan', width: 20, color: '#0070C0' },
    { month: 'Feb', width: 40, color: '#00B050' }
    