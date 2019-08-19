class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDKuoip2aSyUQEklHvhXK6KqY/0UimGoSuoFk9lnsz8pxQEnrjN4/h4/mht6y3pov4fagMl15VZJoP+kYPOFnhcaNUERFiMqSZmcf3KPgpgKfnTzPSJbxbVoRRrvghHENfvm/Vnd33JbkuOAJWKfX3EmJQrDdku5ONKFylPzLletyKNae2wEQnze4Xxjbbe+60Wq5+zSDht+uXcYoqLkHAcAyvQ3xylIUe8KHD/EZj08W7ySUjlfvLBfpdPXy0FmzdvYN4WtuJc4eUfjjDfJgo6oR0kySbH9xMaM81KU55fyS7PN1cTAayR77lCU+7nXKQPaF1UigvELJebBZ1Y71mV',
	}  
}
