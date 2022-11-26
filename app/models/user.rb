class User < ApplicationRecord
  devise :database_authenticatable, :recoverable, :rememberable, :validatable, :invitable

  enum designation: { user: 0, admin: 1, super_admin: 2 }
end
