class Day < ActiveResource::Base
  self.site = "http://localhost:3000"
  belongs_to :week
  has_many :od

  def str_date
    date_date = self.date.to_date
    date_date.strftime('%b %e')
  end

end