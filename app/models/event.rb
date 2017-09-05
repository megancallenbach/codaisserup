class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :starts_at, presence: true
  validates :ends_at, presence: true
  validate :end_after_start

  def end_after_start
  return if ends_at.blank? || starts_at.blank?

  if ends_at < starts_at
    errors.add(:ends_at, "must be after the start date")
  end
 end
end
