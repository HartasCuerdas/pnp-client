# Weeks Controller
class WeeksController < ApplicationController
  before_action :set_week, only: [:show, :destroy]

  # GET /weeks
  def index
    @weeks = Week.all
    @str_today = I18n.l(Date.today, format: :m_d_wd)

    lastWeek = @weeks.last
    date_newWeekFirstDay = lastWeek.firstDay.to_date + 1.week
    @str_newWeekFirstDay = date_newWeekFirstDay.strftime('%b %e')
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

  # POST /weeks.json
  def create
    @week = Week.new
    @week.save
    redirect_to @week, notice: 'Week was successfully created.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_week
      @week = Week.find(params[:id])
    end

end