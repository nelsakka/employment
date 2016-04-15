class User < ActiveRecord::Base
	belongs_to :role
	has_many :jobs
	#before_save { @user = self.user }

	validates :name, presence: true
	validates :email, presence: true, length: { maximum: 255 }, uniqueness: { case_sensetive: false }
	validates :password, presence: true
	validates :role_id, presence: true

	before_save { self.email = email.downcase }
	scope :open, -> { where(filled: false) }

end
