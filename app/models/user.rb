class User < ApplicationRecord
  devise :database_authenticatable, :recoverable, :rememberable, :validatable, :invitable

  enum designation: [ :user, :admin, :super_admin ]
end
