class User < ActiveRecord::Base
  belongs_to :city
  belongs_to :user_role
end
