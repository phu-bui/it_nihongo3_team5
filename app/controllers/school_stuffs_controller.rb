class SchoolStuffsController < ApplicationController
  before_action :set_school_stuff, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /school_stuffs
  # GET /school_stuffs.json
  def index
    @school_stuffs = SchoolStuff.all
  end

  # GET /school_stuffs/1
  # GET /school_stuffs/1.json
  def show
     @school_review = SchoolReview.new
  end

  # GET /school_stuffs/new
  def new
    @school_stuff = SchoolStuff.new
  end

  # GET /school_stuffs/1/edit
  def edit
  end

  # POST /school_stuffs
  # POST /school_stuffs.json
  def create
    @school_stuff = SchoolStuff.new(school_stuff_params)

    respond_to do |format|
      if @school_stuff.save
        format.html { redirect_to @school_stuff, notice: 'School stuff was successfully created.' }
        format.json { render :show, status: :created, location: @school_stuff }
      else
        format.html { render :new }
        format.json { render json: @school_stuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_stuffs/1
  # PATCH/PUT /school_stuffs/1.json
  def update
    respond_to do |format|
      if @school_stuff.update(school_stuff_params)
        format.html { redirect_to @school_stuff, notice: 'School stuff was successfully updated.' }
        format.json { render :show, status: :ok, location: @school_stuff }
      else
        format.html { render :edit }
        format.json { render json: @school_stuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_stuffs/1
  # DELETE /school_stuffs/1.json
  def destroy
    @school_stuff.destroy
    respond_to do |format|
      format.html { redirect_to school_stuffs_url, notice: 'School stuff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_stuff
      @school_stuff = SchoolStuff.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def school_stuff_params
      params.require(:school_stuff).permit(:name, :price, :publisher, :image)
    end
end
