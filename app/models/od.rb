class Od < ActiveResource::Base
  self.site = "http://localhost:3000"
  belongs_to :day

end