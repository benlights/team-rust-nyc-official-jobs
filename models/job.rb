require 'colorize'

class Job
	attr_reader :business_title, :job_description, :salary_range_from, :work_location
	attr_accessor :id
	def initialize(args = {})
		@business_title = args["business_title"]
		@job_description  = args["job_description"]
		@salary_range_from = args["salary_range_from"]
		@work_location  = args["work_location"]
		@id = ""
	end

	def to_s
		"ID: #{pretty_print(id.to_s,:red)}. | Job Title: #{pretty_print(business_title,:yellow)} | Starting Salary #{pretty_print(salary_range_from,:green)}"
	end

	def pretty_print(string,color)
		string.colorize(color)
	end
end
