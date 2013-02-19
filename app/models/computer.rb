class Computer < ActiveRecord::Base
  attr_accessible :comment, :commissioning, :comp_class,
                  :comp_type, :computer_model, :decommissioning,
                  :display, :hdd, :memory, :platform,
                  :processor, :source, :task, :station_id
  belongs_to :station
 validates :computer_model, presence:true
end
