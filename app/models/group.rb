class Group < ApplicationRecord
  has_many :user_groups
  has_many :users, through: :user_groups

  scope :public_access, -> { where(is_private: false) }
  scope :private_access, -> { where(is_private: true) }

  def is_admin?(user_id)
    self.user_groups.with_admin.find_by_user_id(user_id).present?
  end
end
