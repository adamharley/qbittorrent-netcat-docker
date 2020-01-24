qBittorrent with Netcat
=======================

LinuxServer.io's qBittorrent Docker image with Netcat (traditional) added for passing data over sockets with qBitorrent's "Run external program on torrent completion" option


Syntax
------

* `%N`: Torrent name
* `%L`: Category
* `%G`: Tags (separated by comma)
* `%F`: Content path (same as root path for multifile torrent)
* `%R`: Root path (first torrent subdirectory path)
* `%D`: Save path
* `%C`: Number of files
* `%Z`: Torrent size (bytes)
* `%T`: Current tracker
* `%I`: Info hash


Example
-------

Send all available data separated by new lines to `examplehost` on port 1234

`echo -e "%N\n%L\n%G\n%F\n%R\n%D\n%C\n%Z\n%T\n%I" | nc examplehost 1234`
