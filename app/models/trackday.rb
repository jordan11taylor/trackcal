class Trackday < ActiveRecord::Base
  def month
    date.strftime("%B")
  end

  def day
    date.strftime("%a %d")
  end
end
