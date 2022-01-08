import React from 'react'

class Header extends React.Component {

    constructor(props){
        super(props)
        this.myContent = null;
        this.state = {1:""}
    }

    render() {
        return (
            <div id={this.props.idx}>
                {this.props.title}   
            </div>
        )
    }
}


export default Header