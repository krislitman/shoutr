class Shout < ApplicationRecord
  belongs_to :user
  belongs_to :content, polymorphic: true

  validates :user, presence: true

  delegate :username, to: :user

  class << self
    def order_by_created_at
      order(created_at: :desc)
    end
  end
end
