class CourseModule < ActiveRecord::Base
	has_many :topics
	belongs_to :course
end
