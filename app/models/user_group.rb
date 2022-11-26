class UserGroup < ApplicationRecord
  belongs_to :group
  belongs_to :user

  enum user_type: { member: 0, admin: 1 }

  scope :with_admin, -> { where(user_type: 1) }
  scope :with_member, -> { where(user_type: 0) }
end
