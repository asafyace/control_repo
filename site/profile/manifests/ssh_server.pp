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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDZDC+1+zx8VSrO2P/yNlu+0uVgm87y1QnSjh5cbFok7KCTxl+6Hi3bJurARjF4h1TqkgDcg/YGwEpTgAl/q9d5CAzABpqDx3uLr5LUQ4FnANIKCJfmfTPbV4sy28sZyTqx1XlwdpqFSCFzsd5MgBvQDxzNQM6UK21tEzbUV7IFM9RzDq452ERKoOl8BRZD2LtV//yfkWpcV1oW6VREIzRtDHzdogNnJkD2JnJV9IwUussG7jbadalcz/upb0y2JVrNFeI0udsyXQsVJsw2cWlSyseY4Bg6VSKmdm1T16BEt/7oY/ntgTmDvy5ZTXrt+ddjIoes3QyB2NUdH2rq3ccL',
	}  
}


