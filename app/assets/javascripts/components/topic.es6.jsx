class Topic extends React.Component {

  constructor(props) {
    super(props)
    this.state = {
      topic: {
        title: 'Topic Empty',
        body: 'This topic has empty'
      }
    }
  }

  render () {
    return (
      <div className='topic'>
        <h3 className='topic-title'> { this.props.topic.title } </h3>
        <p className='topic-body'> { this.props.topic.body }</p>
      </div>
    );
  }
}

