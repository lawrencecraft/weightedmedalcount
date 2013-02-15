class ScoreWeightsController < ApplicationController
  http_basic_authenticate_with :name => "test", :password => "test"

  # GET /score_weights
  # GET /score_weights.json
  def index
    @score_weights = ScoreWeight.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @score_weights }
    end
  end

  # GET /score_weights/1
  # GET /score_weights/1.json
  def show
    @score_weight = ScoreWeight.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @score_weight }
    end
  end

  # GET /score_weights/new
  # GET /score_weights/new.json
  def new
    @score_weight = ScoreWeight.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @score_weight }
    end
  end

  # GET /score_weights/1/edit
  def edit
    @score_weight = ScoreWeight.find(params[:id])
  end

  # POST /score_weights
  # POST /score_weights.json
  def create
    @score_weight = ScoreWeight.new(params[:score_weight])

    respond_to do |format|
      if @score_weight.save
        format.html { redirect_to @score_weight, notice: 'Score weight was successfully created.' }
        format.json { render json: @score_weight, status: :created, location: @score_weight }
      else
        format.html { render action: "new" }
        format.json { render json: @score_weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /score_weights/1
  # PUT /score_weights/1.json
  def update
    @score_weight = ScoreWeight.find(params[:id])

    respond_to do |format|
      if @score_weight.update_attributes(params[:score_weight])
        format.html { redirect_to @score_weight, notice: 'Score weight was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @score_weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /score_weights/1
  # DELETE /score_weights/1.json
  def destroy
    @score_weight = ScoreWeight.find(params[:id])
    @score_weight.destroy

    respond_to do |format|
      format.html { redirect_to score_weights_url }
      format.json { head :no_content }
    end
  end
end
