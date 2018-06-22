class HelloWorld extends React.Component{
  constructor(props){
    super(props);
    this.state = {
      message: props.message
    };
  }

  render(){
    return(
      <div>
        <h1>{this.state.message}</h1>
      </div>
    )
  }
}
