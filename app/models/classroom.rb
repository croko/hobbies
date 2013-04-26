class Classroom < ActiveRecord::Base
  attr_accessible :name, :partner_id, :seats, :seats_used

  belongs_to :partner
  has_many :classroom_users, dependent: :destroy
  has_many :users, through: :classroom_users

  validates :name, :partner_id, :seats, presence: true
  validates :seats, numericality: true

  scope :sorted, order('name')

end
