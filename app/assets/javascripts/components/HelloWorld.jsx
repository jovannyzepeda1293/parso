class HelloWorld extends React.Component{
  constructor(props){
    super(props);
    this.state = {
      message: props.message
    };
  }

  render(){
    return(
      <div className="row">
        <div className="col-md-12">
        <h1>{this.state.message}<span className="badge badge-secondary">Web Developer</span></h1>
	</div>
      </div>
    )
  }
}
