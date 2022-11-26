class User < ApplicationRecord
  devise :database_authenticatable, :recoverable, :rememberable, :validatable

  has_many :user_groups
  has_many :groups, through: :user_groups

  has_many :user_groups_as_member, -> { where(user_type: 0) }, class_name: 'UserGroup'
  has_many :groups_as_member, through: :user_groups_as_member, source: :group
  
  has_many :user_groups_as_admin, -> { where(user_type: 1) }, class_name: 'UserGroup'
  has_many :groups_as_admin, through: :user_groups_as_admin, source: :group
end
