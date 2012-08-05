class NationsController < ApplicationController
  # GET /nations
  # GET /nations.json
  def index
    @nations = Nation.get_all_ordered_by_gold
    @scoring = ScoreWeight.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nations }
    end
  end
end
