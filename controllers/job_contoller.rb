require_relative './model/job.rb'
require_relative ''
require_relative ''

class JobController
	attr_reader :jobs
	def initialize
		@jobs = []
	end

	def create_jobs(api_input)
		api_input.each do |job_data|
			jobs << Job.new(job_data)
		end
	end
end



