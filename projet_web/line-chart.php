<script>
new Chart(document.getElementById("myLineChart"), {
  type: 'line',
  data: {
    labels: [1500,1600,1700,1750,1800,1850,1900,1950,1999,2050],
    datasets: [{ 
        data: [86,114,106,106,107,111,133,221,783,2478],
        label: "utilisateur 1",
        borderColor: "#3e95cd",
        fill: false
      }, { 
        data: [282,350,411,502,635,809,947,1402,3700,5267],
        label: "utilisateur 2",
        borderColor: "#8e5ea2",
        fill: false
      }, { 
        data: [168,170,178,190,203,276,408,547,675,734],
        label: "Utilisateur 3",
        borderColor: "#3cba9f",
        fill: false
      }, { 
        data: [40,20,10,16,24,38,74,167,508,784],
        label: "Utilisateur 4",
        borderColor: "#e8c3b9",
        fill: false
      }, { 
        data: [6,3,2,2,7,26,82,172,312,433],
        label: "Utilisateur 5",
        borderColor: "#c45850",
        fill: false
      }
    ]
  },
  options: {
    scales:{
      xAxes: [{
        gridLines: {
          display:false
        }
      }],
    },
    title: {
      display: true,
      text: 'Tickets résolus par utilisateur sur année en cours'
    }
  }
});

</script>