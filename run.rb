require_relative 'controllers/job_controller.rb'
require_relative 'views/view.rb'
require_relative 'models/job.rb'
require_relative 'api_module.rb'

JobController.create_jobs(ApiGetter.get_api())