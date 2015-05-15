class JobController
	attr_accessor :jobs

	def initialize
		@jobs = []
	end

	def create_jobs(api_input)
		api_input.each do |job_data|
			jobs << Job.new(job_data)
		end
    add_id
	end

  def find_id(id)
    jobs.select {|j| id == j.id.to_s}.first
  end


  private

  def add_id
    jobs.each_with_index do |job, i|
      job.id = i+1
    end
  end
end



