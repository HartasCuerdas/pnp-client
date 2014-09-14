class DaysController < ApplicationController
  before_action :set_day, only: [:show]
  
  # GET /days/1
  def show
    @day.ods = Od.find(:all, :from => "/days/#{@day.id}/ods.json")
  end

  # PATCH /days/1/toggle_wr
  def toggle_wr
    @week = Day.patch("#{params[:id]}/toggle_wr")
    render :nothing => true
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day
      @day = Day.find(params[:id])
    end

end