class ReviewsController < ApplicationController

  def index
    @books = Book.all
    @reviews = Review.all
  end

  def new
    @book = Book.find(params[:book_id])
    @review = Review.new
  end


  def create
    @book = Book.find(params[:book_id])
    @review = @book.reviews.build(review_params)

    if @review.save
      flash[:notice] = "Success!"
      redirect_to @book
    else
      flash[:notice] = "Your review couldnt be saved."
      redirect_to @book
    end
  end



  private
    def review_params
      params.require(:review).permit(:rating, :body)
    end
end
