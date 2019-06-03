Light configurable set with **nginx** and **php-cgi** for Windows development
--------------------------------------------------------------------------------

### Install & update
Install:
```
git clone https://github.com/hatenaki/wnp
cd wnp
init.bat
exit
```
Update:
```
git pull
```

### Details
Virtual hosts configs directory: `nginx\conf\conf.d`
PHP extensions configuration file: `php\conf.d\extensions.ini`

* `init.bat` - create/restore configs
* `start.bat` - (re)start server
* `stop.bat` - stop server
* `enable.bat` - (re)create startup shortcut
* `disable.bat` - remove startup shortcut

Please run `init.bat` or `start.bat` once before first configuring.
Don't forget to restart server to apply configuration changes.

Place or clone your projects in the `projects` directory.
The **$projects** variable is available for your virtual hosts configs.
This variable is generating with `start.bat` to make configs path-independed.

If you want to prevent the restoring of *localhost* example project,
remove the *projects\localhost* line in `defaults\defaults.ini`.

### License and legal information
The content of this project itself is licensed under the [BSD 2-clause "Simplified" License](./LICENSE)
All rights on redistributed software belong to their respective owners.
License information for redistributed software: [Nginx license](./nginx/docs/LICENSE), [PHP license](./php/license.txt)
Legal information about binaries distributed with PHP: [readme-redist-bins.txt](./php/readme-redist-bins.txt)
This product includes PHP software, freely available from <http://www.php.net/software/>