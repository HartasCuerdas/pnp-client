class Week < ResourceBase

  def str_firstDay
    date_firstDay = firstDay.to_date
    I18n.l(date_firstDay, format: :m_d)
  end

  def str_oAVG
    float_firstDay = oAVG.to_f
    float_firstDay.round(1)
  end

  def str_dAVG
    float_firstDay = dAVG.to_f
    float_firstDay.round(1)
  end

end