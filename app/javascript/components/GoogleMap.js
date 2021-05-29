import React from "react"
import GoogleMapReact from "google-map-react";

const RenderPointer = () =>
  <div>
    <img src={ "./assets/img/map_pointer.png" } className={ "map-pointer" } />
  </div>;

class GoogleMap extends React.Component {
  constructor(props) {
    super(props)
    this.state = { points: [] }
  }

  componentWillMount() {
    fetch("/locations").then((response) => {
      return response.json()
    }).then((response) => {
      this.setState({ points: response["points"] })
    })
  }

  render() {
    return (
      <div className={ "mt-4 google-map-container "}>
        <GoogleMapReact
          bootstrapURLKeys={{key: "AIzaSyDTUhPCIxNnIYg0Uq4_qy80pkvXS_xAUc0"}}
          defaultCenter={this.props.center}
          defaultZoom={this.props.zoom}
        >
          { this.state.points.map((point, index) => (
              <RenderPointer
                lat={ point.lat }
                lng={ point.lng }
              />
          ))}
        </GoogleMapReact>
      </div>
    );
  }
}

export default GoogleMap;
