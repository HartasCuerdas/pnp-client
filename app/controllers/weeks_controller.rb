class WeeksController < ApplicationController
  before_action :set_week, only: [:show, :destroy]

  # GET /weeks
  def index
    @weeks = Week.all
  end
  
  # GET /weeks/1
  def show
    @week.days = Day.find(:all, :from => "/weeks/#{@week.id}/days.json")
  end

  # DELETE /weeks/1
  def destroy
    @week.destroy
    redirect_to weeks_url, notice: 'Week was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_week
      @week = Week.find(params[:id])
    end

end