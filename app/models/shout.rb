class Shout < ApplicationRecord
  belongs_to :user

  validates :body, presence: true, length: { in: 1..144 }
  validates :user, presence: true

  delegate :username, to: :user

  class << self
    def order_by_created_at
      order(created_at: :desc)
    end
  end
end
