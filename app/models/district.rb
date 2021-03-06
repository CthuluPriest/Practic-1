class District < ActiveRecord::Base
  attr_accessible :name, :region_id

  belongs_to :region

  has_many :computers, :dependent => :destroy
  has_many :devices, :dependent => :destroy
  has_many :modems, :dependent => :destroy
  has_many :printers, :dependent => :destroy
  has_many :stations, :dependent => :destroy
  validates :name, :presence => :true

end
