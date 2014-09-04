class Day < ActiveResource::Base
  self.site = "http://localhost:3000"
  belongs_to :week
  has_many :od

  WELL_REGISTERED_TEXT_TRUE = 'Well'
  WELL_REGISTERED_TEXT_FALSE = 'Poor'
  
  # Twitter Bootstrap Button Style Class
  WELL_REGISTERED_STYLE_TRUE = 'btn-success'
  WELL_REGISTERED_STYLE_FALSE = 'btn-danger'

  IS_TODAY_STYLE = 'is-today'

  def str_date
    date_date = self.date.to_date
    date_date.strftime('%b %e, %a')
  end

end