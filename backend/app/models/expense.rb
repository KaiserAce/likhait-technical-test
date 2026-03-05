class Expense < ApplicationRecord
  belongs_to :category
  validate :date_validation
  private 

  def date_validation
    if date.present? && date > Date.today
      errors.add(:date, "Expense date cannot be in the future!")
    end
  end
end
