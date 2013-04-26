class Partner < ActiveRecord::Base
  attr_accessible :name

  has_many :classrooms

  validates :name, presence: true

  scope :sorted, order('name')

end
