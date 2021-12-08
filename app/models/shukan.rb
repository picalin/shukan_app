class Shukan < ApplicationRecord
  belongs_to :user
  acts_as_list scope: [:user_id]

  validates :position, numericality: { only_integer: true, allow_nil: true }
  validates :title, presence: true
  validates :done, inclusion: { in: [true, false] }
  after_initialize :set_default, if: :new_record?

  private
  
  def set_default
    self.done = false if self.done.blank?
  end
end
