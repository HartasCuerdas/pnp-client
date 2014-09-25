# Day Resource Model
class Day < ResourceBase

  # Text value for boolean
  WR_TEXT_TRUE = I18n.t('Well')
  # Text value for boolean
  WR_TEXT_FALSE = I18n.t('Poor')
  
  # Twitter Bootstrap Button Style Class
  WR_STYLE_TRUE = 'btn-success'
  # Twitter Bootstrap Button Style Class
  WR_STYLE_FALSE = 'btn-danger'

  # Style class
  IS_TODAY_STYLE = 'pnpC-is-today'

  # returns format date string for date
  def str_date
    date_date = date.to_date
    I18n.l(date_date, format: :m_d_wd)
  end

  # returns string for well_registered boolean
  def str_wr
    well_registered ? WR_TEXT_TRUE : WR_TEXT_FALSE
  end

  # returns Style class for well_registered boolean
  def str_wr_TwbsBtnStyleClass
    well_registered ? WR_STYLE_TRUE : WR_STYLE_FALSE
  end

  # returns Style for current day
  # used in Week show (table of days)
  def str_isTodayClass
    (date == Date.today.to_s) ? IS_TODAY_STYLE : ''
  end

end