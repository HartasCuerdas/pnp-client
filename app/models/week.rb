class Week < ResourceBase

  # Style class for current week
  IS_CURRENT_WEEK_STYLE = 'pnpC-is-current-week'

  # returns localized date for firstDay string
  def str_firstDay
    date_firstDay = firstDay.to_date
    I18n.l(date_firstDay, format: :m_d)
  end

  # returns rounded float for oAVG string
  def str_oAVG
    float_firstDay = oAVG.to_f
    float_firstDay.round(1)
  end

  # returns rounded float for dAVG string
  def str_dAVG
    float_firstDay = dAVG.to_f
    float_firstDay.round(1)
  end

  # returns IS_CURRENT_WEEK_STYLE for current week  
  # used in Weeks index
  def str_isCurrentWeekClass
    currentWeekFirstDay = Date.today.beginning_of_week(:sunday)
    (firstDay.to_s == currentWeekFirstDay.to_s) ? IS_CURRENT_WEEK_STYLE : ''
  end

end