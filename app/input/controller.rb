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
  end

end
