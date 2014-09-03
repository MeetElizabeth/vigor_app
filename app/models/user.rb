class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  has_one :fitbit_panel, through: :dashboard, dependent: :destroy
  has_one :strava_panel, through: :dashboard, dependent: :destroy
  has_many :goals, through: :dashboards, dependent: :destroy

  validates_presence_of :first_name, :last_name, :email, :password
  validates_uniqueness_of :email

end
