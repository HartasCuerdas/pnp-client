class Od < ResourceBase

  OD_TEXT_TRUE = 'ON'
  OD_TEXT_FALSE = 'OFF'
  
  # Twitter Bootstrap Button Style Class
  OD_STYLE_TRUE = 'btn-success'
  OD_STYLE_FALSE = 'btn-default'

  def str_o_enabled
    str_od_enabled(o)
  end

  def str_d_enabled
    str_od_enabled(d)
  end

  def str_od_enabled(od)
    od ? OD_TEXT_TRUE : OD_TEXT_FALSE
  end

  def str_o_TwbsBtnStyleClass
    str_od_TwbsBtnStyleClass(o)
  end

  def str_d_TwbsBtnStyleClass
    str_od_TwbsBtnStyleClass(d)
  end

  def str_od_TwbsBtnStyleClass(od)
    od ? OD_STYLE_TRUE : OD_STYLE_FALSE
  end

end