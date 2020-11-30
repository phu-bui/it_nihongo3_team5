class SchoolReviewsController < ApplicationController
  before_action :set_school_review, only: [:show, :edit, :update, :destroy]

  # GET /school_reviews
  # GET /school_reviews.json
  def index
    @school_reviews = SchoolReview.all
  end

  # GET /school_reviews/1
  # GET /school_reviews/1.json
  def show
  end

  # GET /school_reviews/new
  def new
    @school_review = SchoolReview.new
  end

  # GET /school_reviews/1/edit
  def edit
  end

  # POST /school_reviews
  # POST /school_reviews.json
  def create
    @school_review = SchoolReview.new(school_review_params)

    respond_to do |format|
      if @school_review.save
        
        url = "/school_stuffs/" + @school_review.school_stuff_id.to_s
        format.html { redirect_to url, notice: 'SchoolStuff review was successfully created.' }
        format.json { render :show, status: :created, location: @school_review }
      else
        format.html { render :new }
        format.json { render json: @school_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_reviews/1
  # PATCH/PUT /school_reviews/1.json
  def update
    respond_to do |format|
      if @school_review.update(school_review_params)
        format.html { redirect_to @school_review, notice: 'School review was successfully updated.' }
        format.json { render :show, status: :ok, location: @school_review }
      else
        format.html { render :edit }
        format.json { render json: @school_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_reviews/1
  # DELETE /school_reviews/1.json
  def destroy
    @school_review.destroy
    respond_to do |format|
      format.html { redirect_to school_reviews_url, notice: 'School review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_review
      @school_review = SchoolReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def school_review_params
      params.require(:school_review).permit(:user_id, :school_stuff_id, :review)
    end
end
