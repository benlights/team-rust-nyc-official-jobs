require_relative './models/job.rb'
require_relative './view/view.rb'
require_relative './api_module.rb'

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



