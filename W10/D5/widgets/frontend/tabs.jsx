import React from 'react'
import Header from './header.jsx'

class Tabs extends React.Component {

    constructor(props) {
        super(props)
        this.state = {idx: 0}
    }
    
    

    render() {
        return  (
            <div>
                <ul>
                    {this.props.array.map((tab, idx)=>{
                        return <Header key={idx} title={tab.title} content={tab.content} />
                    })}
                </ul>


            </div>
        )
        
    }


}


export default Tabs


