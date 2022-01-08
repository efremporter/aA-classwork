import React from 'react'

class Header extends React.Component {

    constructor(props){
        super(props)
        this.myContent = null;
        this.showContent = this.showContent.bind(this)
        this.state = {1:""}
    }

    showContent() {
       console.log({'clicked ': this.props.content})
       this.myContent = this.props.content;
       this.setState({1:""})
    }

    render() {
        return (
            <div onClick={this.showContent} >
                {this.props.title}
                <div>
                    {this.myContent}
                </div>
                
            </div>

        )
    }

}


export default Header