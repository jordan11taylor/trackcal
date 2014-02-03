class Trackday < ActiveRecord::Base
  scope :by_track, -> track { where(:track => track) }
  scope :by_organization, -> organization { where(:organization => organization) }

  def to_param
    "#{id} #{track}".parameterize  
  end

  def month
    date.strftime("%B")
  end

  def day
    date.strftime("%a %d")
  end
end
