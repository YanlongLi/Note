
# Usage of SSH

[link1](https://wiki.archlinux.org/index.php/Secure_Shell#Client)
[lin2](https://wiki.archlinux.org/index.php/SSH_keys#Securing_the_authorized_keys_file)

## On Server

### Config File `/etc/ssh/sshd_config`

```
Port 22
AllowUsers username
PermitRootLogin no
Banner /etc/issue
```
### Start sshd Daemon

```
systemctl start sshd
```

## On Client

### Login with passwd

```
ssh -p port username@server-addr 
```

### Login with ssh key

1. add pub key to server

	```
	ssh-copy-id username@server-ip
	```

2. login with ssh key

```
ssh username@server-ip
```

3. if you want to disable passwd logins

add below to server sshd config tool

```
PasswordAuthentication no
ChallengeResponseAuthentication no
```

## Others

### change the passphrase without changing the actual key.

```
ssh-keygen -f ~/.ssh/id_rsa -p
```
