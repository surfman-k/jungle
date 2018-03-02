class ReviewsController < ApplicationController
	def create
 		product_id = params[:product_id]
  	rating = params[:review][:rating]
  	review = params[:review][:description]
  	user_reviewed = session[:user_id]
		new_review = Review.new({product_id: product_id, user_id: user_reviewed, rating: rating, description: review})
		if new_review.save
  		redirect_to '/'
  	else
  		redirect_to '/'
  	end
  end
end
