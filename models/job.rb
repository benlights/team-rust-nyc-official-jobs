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
		"ID: #{id}. | Job Title: #{business_title} | Starting Salary: #{salary_range_from}"
	end
end
