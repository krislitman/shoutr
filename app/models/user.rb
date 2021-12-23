class User < ApplicationRecord
  include Clearance::User

  validates :username, presence: true, uniqueness: true

  has_many :shouts, dependent: :destroy

  def ordered_shouts
    shouts.order(created_at: :desc)
  end
end
