require 'json'
require_relative 'credentials.rb'
class Controller
  def self.gather_input(folder = nil, master = nil, junk = nil)
    inputs = Credentials.new
    if folder.nil? && master.nil? && junk.nil?
      folder = inputs.folderName()
      master = {user: inputs.accountName("master"), pass: inputs.accountPassword("master")}
      junk = {user: inputs.accountName("junk"), pass: inputs.accountPassword("junk")}
    end
    return {f: folder, j: check(junk, 'junk'), m: check(master, 'master')}
  end

  def self.recollect_account_credentials(account, type, new_credentials = nil)
    puts "Account credentials for #{account[:user]} (#{type} account) invalid."
    if(new_credentials.nil?)
      puts "Username: ";username = STDIN.gets
      puts "Password: ";password = STDIN.noecho(&:gets)
    else
      username = new_credentials[:user]
      password = new_credentials[:pass]
    end
    return {user: username.gsub("\n", ""), pass: password.gsub("\n", "")}
  end

  def self.check(credentials, type, new_credentials = nil)
    response = `curl -i https://api.github.com -u #{credentials[:user]}:#{credentials[:pass]}`
    response = JSON.parse(response[response.index('{')..-1])
    response["message"] ? check(recollect_account_credentials(credentials, type, new_credentials), type) : credentials
  end
end
