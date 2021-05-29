import React from "react"
import { Navbar, Nav, Link } from "react-bootstrap";

class TopBar extends React.Component {
  render () {
    return (
      <Navbar bg="dark" variant="dark" className={"bg-dark"}>
        <div className={ "container-fluid" }>
          <Nav.Item className={ "navbar-header col-md-2" }>
            <Navbar.Brand href="#">Company</Navbar.Brand>
          </Nav.Item>

          <Nav className={ "navbar-right" } >
            <ul className={ "nav navbar-nav" }>
              <li>
                <Nav.Link href="#">Sign out</Nav.Link>
              </li>
            </ul>
          </Nav>
        </div>
      </Navbar>);
  }
}

export default TopBar
