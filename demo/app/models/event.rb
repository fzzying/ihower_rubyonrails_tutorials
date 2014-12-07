class Event < ActiveRecord::Base
  belongs_to :category
  has_many :attendees
  has_many :event_groupships
  has_many :groups, :through => :event_groupships
  has_one :location
  validates_presence_of :name
  delegate :name, :to => :category, :prefix => true, :allow_nil => true
end
