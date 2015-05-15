require_relative 'controllers/job_controller.rb'
require_relative 'views/view.rb'
require_relative 'models/job.rb'
require_relative 'api_module.rb'
require 'pry'
controller = JobController.new
View.welcome
input = ''

while true
  break if input == 'quit' || input =='exit'
  View.msg_enter_search
  input = View.input
  controller.create_jobs(ApiGetter.get_api(input))
  break if input == 'quit' || input =='exit'
  View.msg_list
  View.display(controller.jobs)

  while true
    View.msg_enter_id
    input = View.input
    break if input == 'next' || input == 'quit' || input =='exit'
    if controller.find_id(input)
      View.display(controller.find_id(input).job_description)
    else
      View.msg_invalid_id
    end
   end

  View.end_of_query
  controller.jobs = []

end
