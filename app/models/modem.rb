class Modem < ActiveRecord::Base
  attr_accessible :comment, :commissioning, :decommissioning,
                  :model, :modem_type, :source, :speed, :task , :station_id, :district_id
  belongs_to :station
  belongs_to :district

  def retirement?
    self.decommissioning  < Date.today
  end
end
