# mmanifest to setup ssh config file
file { '/etc/ssh/ssh_config':
  ensure  => 'present',
  content => "
  Host *
      SendEnv LANG LC_*
      HashKnownHosts yes
      GSSAPIAuthentication yes
      GSSAPIDelegateCredentials no
      IdentityFile ~/.ssh/school
      PasswordAuthentication no
  "
}
