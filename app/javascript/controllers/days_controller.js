import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
 
  connect() {
    const divElement = this.element; 
    const data = JSON.parse(divElement.getAttribute('data-days-sells'));
    const colors = ['red', 'blue', 'green', 'orange', 'pink', 'yellow', 'gray'];
    let days = [];
    let total = [];

    data.forEach(element =>{
      days.push(element[0]);
      total.push(element[1]);
    });
      
    new Chart("daySells", {
      type: "bar",
      data: {
        labels: days,
        datasets: [{
          backgroundColor: colors,
          data: total
        }]
      },
      options: {
        legend: { display: false},
        title: { display: false }
      }
     });
  }  
}  