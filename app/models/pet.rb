class Pet < ApplicationRecord
  validates :name, :date, :species, presence: true
  validates :species, inclusion: { in: %w(dog cat rabbit horse snake) }

  def found_days_ago
    (Date.today - date).to_i
  end
end
