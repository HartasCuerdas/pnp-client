class OdsController < ApplicationController
  
  # PATCH /ods/1/toggle_o
  def toggle_o
    Od.patch("#{params[:id]}/toggle_o")
    render :nothing => true
  end

  # PATCH /ods/1/toggle_d
  def toggle_d
    Od.patch("#{params[:id]}/toggle_d")
    render :nothing => true
  end

end