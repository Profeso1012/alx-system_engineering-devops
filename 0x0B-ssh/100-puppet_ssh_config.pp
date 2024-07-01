# Ensure the SSH config directory exists
file { '/etc/ssh/ssh_config':
  ensure    => 'present'
  content   => "
  Host *
      SendEnv LAN LC_*
      HashKnownHosts yes
      GSSAPIAuthentication yes
      GSSAPIDelegateCredentials no
      IdentifyFile ~/.ssh/school
      PasswordAuthentication no
  "
}
