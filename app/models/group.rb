class Group < ApplicationRecord
  has_many :user_groups
  has_many :users, through: :user_groups

  scope :public_access, -> { where(is_private: false) }
  scope :private_access, -> { where(is_private: true) }
end
