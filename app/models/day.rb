class Day < ActiveResource::Base
  self.site = "http://localhost:3000"
  belongs_to :week
  has_many :od

  WR_TEXT_TRUE = 'Well'
  WR_TEXT_FALSE = 'Poor'
  
  # Twitter Bootstrap Button Style Class
  WR_STYLE_TRUE = 'btn-success'
  WR_STYLE_FALSE = 'btn-danger'

  IS_TODAY_STYLE = 'is-today'

  def str_date
    date_date = self.date.to_date
    date_date.strftime('%b %e, %a')
  end

  def str_wr
    self.well_registered ? WR_TEXT_TRUE : WR_TEXT_FALSE
  end

  def str_wr_TwbsBtnStyleClass
    self.well_registered ? WR_STYLE_TRUE : WR_STYLE_FALSE
  end

  def str_isTodayClass
    (self.date == Date.today) ? IS_TODAY_STYLE : ''
  end

end