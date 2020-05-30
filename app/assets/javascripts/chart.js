$(document).on('turbolinks:load', function(){
  var acidity = gon.acidity;
  var bitterness = gon.bitterness;
  var sweetness = gon.sweetness;
  var fragrance = gon.fragrance;
  var richiness = gon.richiness;
  
  var ctx = document.getElementsByClassName("myChart");
  new Chart(ctx, {
    type: 'radar',
    data: {
      labels: ["酸味", "苦味", "甘味", "香り", "コク"],
      datasets: [{
      label: '味のバランス',
      backgroundColor: "rgba(0,0,80,0.4)",
      borderColor: "rgba(0,0,80,1)",
      data: [acidity,bitterness,sweetness,fragrance,richiness]
    }],
  },
  options: {
    scale: {
      pointLabels: {
        fontSize: 25,
        fontColor: "green"
      },
      ticks: {
        min: 0,
        max: 5,
        stepSize: 1
      }
    },
    legend: {
      labels: {
        fontSize: 20
      }
    }
  }
});
});

