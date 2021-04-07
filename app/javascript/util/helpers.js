import { passCsrfToken } from '../util/helpers'

class NewPost extends React.Component {
    state = {
        title: '',
        body: ''
    }

    componentDidMount() {
        passCsrfToken(document, axios)
    }