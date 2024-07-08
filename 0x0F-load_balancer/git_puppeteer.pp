exec { 'git_add':
  command => 'git add .',
  cwd     => '/home/profeso/alx-system_engineering-devops/0x0F-load_balancer',
  onlyif  => 'test -n "$(git status --porcelain)"',  # Only run if there are changes
}

exec { 'git_commit':
  command => 'git commit -m "Automated commit by Puppet"',
  cwd     => '/path/to/your/repo',
  onlyif  => 'test -n "$(git status --porcelain)"',  # Only run if there are changes
  require => Exec['git_add'],
}

exec { 'git_push':
  command => 'git push',
  cwd     => '/path/to/your/repo',
  onlyif  => 'test -n "$(git status --porcelain)"',  # Only run if there are changes
  require => Exec['git_commit'],
}
