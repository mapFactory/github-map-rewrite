# require_relative 'folder_setup.rb'
# require_relative 'backup.rb'
class GithubApi

  #create
  def create_online_repo(folder, account)
    `curl -u "#{account[:user]}:#{account[:pass]}" https://api.github.com/user/repos -d '{ "name": "#{folder.split('/')[-1]}" }' /dev/null`
  end

  #check
  def check_online_repo(folder, account)
    response = `curl -i https://api.github.com/repos/#{account[:user]}/#{folder}`
    response = JSON.parse(response[response.index('{')..-1])
    response["message"].nil?
  end

  #delete
  def delete_online_repo(folder, account) # When we have the program running, we will update this.
    username = account[:user];password = account[:pass];
    `curl -u #{username}:#{password} -X DELETE  https://api.github.com/repos/{#{username}}/{#{folder.split('/')[-1]}}`;#puts folder.split('/')[-1];
  end
end
