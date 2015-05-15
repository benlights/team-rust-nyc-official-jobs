require_relative 'controllers/job_controller.rb'
require_relative 'views/view.rb'
require_relative 'models/job.rb'
require_relative 'api_module.rb'

controller = JobController.new
View.welcome
input = View.input
controller.create_jobs(ApiGetter.get_api(input))
View.display(controller.jobs)
