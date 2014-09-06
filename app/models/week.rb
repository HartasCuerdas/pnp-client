class Week < ActiveResource::Base
  self.site = "http://localhost:3000"
  has_many :days

  def str_firstDay
    date_firstDay = self.firstDay.to_date
    I18n.l(date_firstDay, format: :m_d)
  end

  def str_oAVG
    float_firstDay = self.oAVG.to_f
    float_firstDay.round(1)
  end

  def str_dAVG
    float_firstDay = self.dAVG.to_f
    float_firstDay.round(1)
  end

end