
# User Management

## add a user 

```bash
useradd -m -g users -s /bin/bash <username>
```

## change passwd

```bash
passwd [username]
```

## add user to group

```bash
gpasswd -a <username> <groupname>
```

## change file ownner

```bash
chown username filename
chown username:groupname filename
chown -R username:groupname dirname
```

## change the mode of file

```
chmod code file
```
