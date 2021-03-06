# Od Resource Model
class Od < ResourceBase

  # Text value for boolean
  OD_TEXT_TRUE = 'ON'
  # Text value for boolean
  OD_TEXT_FALSE = 'OFF'
  
  # Twitter Bootstrap Button Style Class
  OD_STYLE_TRUE = 'btn-success'
  # Twitter Bootstrap Button Style Class
  OD_STYLE_FALSE = 'btn-default'

  # returns text for o boolean
  def str_o_enabled
    str_od_enabled(o)
  end

  # returns text for d boolean
  def str_d_enabled
    str_od_enabled(d)
  end

  # returns text value for o or d boolean
  def str_od_enabled(od)
    od ? OD_TEXT_TRUE : OD_TEXT_FALSE
  end

  # returns Twitter Bootstrap style for o boolean
  def str_o_TwbsBtnStyleClass
    str_od_TwbsBtnStyleClass(o)
  end

  # returns Twitter Bootstrap style for o boolean
  def str_d_TwbsBtnStyleClass
    str_od_TwbsBtnStyleClass(d)
  end

  # returns Twitter Bootstrap style for o or d booleans
  def str_od_TwbsBtnStyleClass(od)
    od ? OD_STYLE_TRUE : OD_STYLE_FALSE
  end

end