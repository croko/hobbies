class ClassroomUser < ActiveRecord::Base
  attr_accessible :active, :classroom_id, :user_id
  belongs_to :classroom
  belongs_to :user

  validates_uniqueness_of :user_id, scope: :classroom_id

  before_save :validate_seats_amount

  private

  def validate_seats_amount
    if classroom.seats == classroom.seats_used.to_i
      self.active = :false
    else
      classroom.increment! :seats_used, 1
    end
  end

end
