class OdsController < ApplicationController
  
  # TOGGLE_O /ods/1
  def toggle_o
    Od.put("#{params[:id]}/toggle_o")
    render :nothing => true
  end

  # TOGGLE_D /ods/1
  def toggle_d
    Od.put("#{params[:id]}/toggle_d")
    render :nothing => true
  end

end