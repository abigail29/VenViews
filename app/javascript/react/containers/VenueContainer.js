import React, { Component } from 'react';
import FormContainer from './FormContainer'
import Venue from '../components/Venue';
import Review from '../components/Review';

class VenueContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      user: {},
      name: '',
      address: '',
      description: '',
      capacity: null,
      url: '',
      image: '',
      reviews: []
    };
  this.addNewReview = this.addNewReview.bind(this)
  this.handleDelete = this.handleDelete.bind(this)
  }

  componentDidMount() {
    let venueId = this.props.params.id
    fetch(`/api/v1/venues/${venueId}`)
      .then(response => {
        if (response.ok) {
          return response;
        } else {
          let errorMessage = `${response.status} (${response.statusText})`,
              error = new Error(errorMessage);
          throw(error);
        }
      })
      .then(response => response.json())
      .then(body => {
        this.setState({ name: body.venue.name, address: body.venue.address, description: body.venue.description, capacity: body.venue.capacity, url: body.venue.url, image: body.venue.image, reviews: body.venue.reviews });
      })
      .then(
        fetch(`/api/v1/current_user`)
        .then(response => {
          if (response.ok) {
            return response;
          } else {
            let errorMessage = `${response.status} (${response.statusText})`,
                error = new Error(errorMessage);
            throw(error);
          }
        })
        .then(response => response.json())
        .then(body => {
          if (body !== null) {
            this.setState({ user: body });
          }
        })
      )
      .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  addNewReview(formPayload){
    let venueId = this.props.params.id
    fetch(`/api/v1/venues/${venueId}/reviews`, {
      method: 'POST',
      body: JSON.stringify(formPayload),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      },
      credentials: 'same-origin'
    })
      .then(response => {
        if (response.ok) {
          return response;
        } else {
          let errorMessage = `${response.status} (${response.statusText})`,
              error = new Error(errorMessage);
          throw(error);
        }
      })
      .then(response => response.json())
      .then(newlyCreatedReview => {
        let allReviews = this.state.reviews
        let newReview = newlyCreatedReview.review
        this.setState({ reviews: allReviews.concat(newReview) })
      })
      .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  handleDelete(reviewId) {
    let venueId = this.props.params.id
    fetch(`/api/v1/venues/${venueId}/reviews/${reviewId}`, {
      method: 'DELETE',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      },
      credentials: 'same-origin'
    })
      .then(response => {
        if (response.ok) {
          return response;
        } else {
          let errorMessage = `${response.status} (${response.statusText})`,
              error = new Error(errorMessage);
          throw(error);
        }
      })
      .then(response => response.json())
      .then(data => {
        let oldReviews = this.state.reviews
        let newReviews = oldReviews.filter(review => {
          return review.id !== reviewId
        })
        this.setState({reviews: newReviews})
      })
      .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render() {
      let reviews = this.state.reviews.map(review => {

        let deleteHandler = () => {
          this.handleDelete(review.id)
        }
        return(
          <Review
            key={review.id}
            id={review.id}
            rating={review.rating}
            description={review.description}
            userId={this.state.user.id}
            reviewUserId={review.user_id}
            deleteHandler={deleteHandler}
          />
        )
      })

    return (
      <div>
        <div className="venue-show">
          <div className="content">
            <Venue
              name={this.state.name}
              address={this.state.address}
              description={this.state.description}
              capacity={this.state.capacity}
              url={this.state.url}
              image={this.state.image}
            />
          </div>
          <h4 className="row_column">Reviews</h4>
            {reviews}
          <div className="form">
            <FormContainer
              addNewReview={this.addNewReview}
              id = {this.props.params.id}
              user={this.state.user}
            />
          </div>
        </div>
      </div>
    );
  }
}

export default VenueContainer;
