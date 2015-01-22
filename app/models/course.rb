class Course < ActiveRecord::Base
	has_many :course_modules
	belongs_to :year
end
