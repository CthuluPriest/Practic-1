class Device < ActiveRecord::Base
  attr_accessible :comment, :commissioning, :decommissioning,
                  :device_model, :device_type, :source, :task , :station_id, :district_id
  belongs_to :station
  belongs_to :district



  def retirement?
           self.decommissioning  < Date.today
  end

end
