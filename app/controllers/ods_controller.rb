class OdsController < ApplicationController
  before_action :set_od, only: [:toggle_o, :toggle_d]
  
  # TOGGLE_O /ods/1
  def toggle_o
    res = Od.put("#{@od.id}/toggle_o")
    render :nothing => true
  end

  # TOGGLE_D /ods/1
  def toggle_d
    res = Od.put("#{@od.id}/toggle_d")
    render :nothing => true
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_od
      @od = Od.find(params[:id])
    end

end