import React from "react"
import { Line } from "react-chartjs-2";

const chartData = (response) => {
  return {
    labels: response.map((data, index) => (data[0])),
    datasets: [{
      label: "Week records",
      borderColor: "#007bff",
      backgroundColor: "#134CCF",
      data: response.map((data, index) => (data[1]))
    }]
  }
}
  

class LineChart extends React.Component {
  constructor(props) {
    super(props)
    this.state = { chart_data: [] }
  }

  componentWillMount() {
    fetch("/data").then((response) => {
      return response.json()
    }).then((response) => {
      this.setState({ chart_data: response["data"] })
    })
  }

  render () {
    return(
      <div className={ "mt-2" }>
        <Line data={chartData(this.state.chart_data)} options={{}} />
      </div>);
  }
}

export default LineChart
