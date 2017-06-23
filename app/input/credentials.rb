class Credentials
  def folderName(folder = nil) puts "Please enter folder name: "; folder = STDIN.gets; folder = folder.gsub("\n", ""); end #called specifically in task
  def accountName(str) puts "Please enter Github account name for #{str} repository: "; username = STDIN.gets; username.gsub("\n", ""); end #inputsToUser
  def accountPassword(str) puts "Please enter password for #{str} Github account: "; password = STDIN.noecho(&:gets); password.gsub("\n", ""); end #inputsToUser
end
