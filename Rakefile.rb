require_relative 'app/input/credentials.rb'
require_relative 'app/input/controller.rb'

task :github_map do #works
# user_info ... Account and Credentials
  gather_info = Controller.gather_input()

end
task :de_github_map do
	gather_info = Controller.gather_input()

end
