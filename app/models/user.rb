class User < ActiveRecord::Base
	belongs_to :role
	has_many :jobs

	validates :name, presence: true
	validates :email, presence: true, uniqueness: { case_sensetive: false }
	validates :password, presence: true
	validates :role_id, presence: true

	before_save { self.email = email.downcase }

end
