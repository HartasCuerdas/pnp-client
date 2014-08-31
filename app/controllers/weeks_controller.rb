class WeeksController < ApplicationController

  # GET /weeks
  def index
    @weeks = Week.all
  end
  
end