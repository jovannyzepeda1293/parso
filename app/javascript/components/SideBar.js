import React from "react"
import { Nav } from "react-bootstrap";

class SideBar extends React.Component {
  render () {
    return (
        <Nav className={ "bg-light col-md-2" } id="sidebar-wrapper">
          <div className={"sidebar-nav"}>
            <Nav.Item>
                <Nav.Link href="#" className={ "active" }>Home</Nav.Link>
            </Nav.Item>
            <Nav.Item>
                <Nav.Link href="#">Mapas</Nav.Link>
            </Nav.Item>
            <Nav.Item>
                <Nav.Link href="#">Pruebas</Nav.Link>
            </Nav.Item>
            <Nav.Item>
                <Nav.Link href="#">Reportes</Nav.Link>
            </Nav.Item>
          </div>
        </Nav>
    );
  }
}

export default SideBar
