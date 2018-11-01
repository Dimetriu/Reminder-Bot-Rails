class Event < ApplicationRecord
  enum priority: { not: 0, low: 1, medium: 2, high: 3 }
  enum state: { remind_once: 0, continuous_reminding: 1 }
  enum continue_remind_in: { never: 0, one_day: 1, one_week: 2, one_month: 3 }

  validates :title, presence: true, uniqueness: true
end
