# require_relative 'folder_setup.rb'
# require_relative 'backup.rb'
class GithubModifier
  def start_repo_locally
    `git init`;`git add *`;`git commit -m "Initial Commit"`;
  end
  def establish_Origin_repo(folder, account)
      `git remote rm origin`
      `git remote add origin https://#{account[:user]}:#{account[:pass]}@github.com/#{account[:user]}/#{folder.split('/')[-1]}.git`
  end
  def commit_andPush(x)
    `git rm --cached -rf #{x}`
    `git add *`;`git commit -m "Add submodule folder #{x}"`;`git push origin master --quiet`
  end
  def removeFiles_addSubmodule(x, junk)
    `git rm --cached -rf #{x}`
    `git submodule add https://github.com/#{junk[:user]}/#{x}`
  end
end
