class Trackday < ActiveRecord::Base
  def month
    date.strftime("%B")
  end
end
