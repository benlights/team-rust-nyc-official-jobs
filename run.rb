require_relative 'controllers/job_controller.rb'
require_relative 'views/view.rb'
require_relative 'models/job.rb'
require_relative 'api_module.rb'
require 'pry'
controller = JobController.new
View.welcome
input = View.input
controller.create_jobs(ApiGetter.get_api(input))
# binding.pry
View.display("Here is a list of ten jobs that match your search-term sorted by starting salary")
View.display(controller.jobs)
