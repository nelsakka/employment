class Job < ActiveRecord::Base
	belongs_to :type
	belongs_to :user

	validates :name, presence: true
	validates :overview, presence: true
	validates :type_id, presence: true
	validates :user_id, presence: true
end
