# Install WordPress to current directory

It installs WordPress test environment for PHPUnit.

## How to use

Downaload, move, +x
```
$ git clone https://github.com/yousan/wphere.git
$ mv wphere/wphere ~/sh/
$ chmod +x ~/sh/wpehre
```

### Edit MySQL and WordPress information
```
DBHOST=localhost
DBNAME=yourname_wordpress
DBUSER=yourname
DBPASS=dbpasshere
WPUSER=yourname
WPPASS=passwordprere
WPMAIL=yourname@example.com
```

Call wphere
```
$ wphere
```


## Requires

* WP-CLI
