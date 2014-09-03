class Goal < ActiveRecord::Base
  belongs_to :dashboard
  belongs_to :user, through: :dashboard
end
