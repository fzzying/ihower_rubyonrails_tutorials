class Event < ActiveRecord::Base
  belongs_to :category
  has_many :attendees
  has_many :event_groupships
  has_many :groups, :through => :event_groupships

  has_one :location
  accepts_nested_attributes_for :location, :allow_destroy => true, :reject_if => :all_blank

  validates_presence_of :name
  delegate :name, :to => :category, :prefix => true, :allow_nil => true
  delegate :name, :to => :location, :prefix => true, :allow_nil => true
end
