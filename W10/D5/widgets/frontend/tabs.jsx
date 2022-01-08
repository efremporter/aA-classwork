import React from 'react'
import Header from './header.jsx'

class Tabs extends React.Component {

    constructor(props) {
        super(props)
        this.state = {idx: 0}
        this.updateIdx = this.updateIdx.bind(this);
    }
    
    updateIdx(e) {
        this.setState({idx: e.target.id})
    }
    

    render() {
        return  (
            <div>
                <ul onClick={this.updateIdx}>
                    {this.props.array.map((tab, idx)=>{
                        return <Header idx={idx} key={idx} title={tab.title} content={tab.content} />
                    })}
                </ul>
                <div>
                    {this.props.array[this.state.idx].content}
                </div>

            </div>
        )
        
    }


}


export default Tabs


