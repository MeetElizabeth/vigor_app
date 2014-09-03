class Fitbit < ActiveRecord::Base
  belongs_to :dashboard
  belongs_to :users, through: :dashboard

end
