function cap_deploy_branch {
  branchname=$1
  bundle exec cap sandbox deploy -S branch=$branchname
}

function deploy_current_branch {
  cap_deploy_branch `git rev-parse --abbrev-ref HEAD`
}

function open_gem {
  gem_name=$1
  (cd `bundle show $gem_name` && mvim .)
}

alias cdb=cap_deploy_branch
alias dcb=deploy_current_branch
alias og=open_gem

