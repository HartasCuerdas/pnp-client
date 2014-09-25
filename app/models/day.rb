class Day < ResourceBase

  WR_TEXT_TRUE = I18n.t('Well')
  WR_TEXT_FALSE = I18n.t('Poor')
  
  # Twitter Bootstrap Button Style Class
  WR_STYLE_TRUE = 'btn-success'
  WR_STYLE_FALSE = 'btn-danger'

  IS_TODAY_STYLE = 'pnpC-is-today'

  def str_date
    date_date = date.to_date
    I18n.l(date_date, format: :m_d_wd)
  end

  def str_wr
    well_registered ? WR_TEXT_TRUE : WR_TEXT_FALSE
  end

  def str_wr_TwbsBtnStyleClass
    well_registered ? WR_STYLE_TRUE : WR_STYLE_FALSE
  end

  def str_isTodayClass
    (date == Date.today.to_s) ? IS_TODAY_STYLE : ''
  end

end