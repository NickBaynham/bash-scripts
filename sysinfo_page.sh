#!/bin/bash -x

# generate system HTML page - A script to produce an HTML document with  system information

#### Constants

TITLE="System Information for $HOSTNAME"
NOW=$(date)
UPDATED="Updated on $NOW by $USER."

#### Functions

system_info() {
 echo "System Information"
}

system_uptime() {
  echo "<h2>System uptime</h2>"
  echo "<pre>"
  uptime
  echo "</pre>"
}

drive_space() {
  echo "<h2>Filesystem space</h2>"
  echo "<pre>"
  df
  echo "</pre>"
  echo "Drive Space"
}

home_space() {
  echo "<h2>Home directory space by user</h2>"
  echo "<pre>"
  echo "Bytes Directory"
  du -s ~/* | sort -nr
  echo "</pre>"
}

#### Main

cat <<- _EOF_
	<html>
	  <head>
	    <title>
	      $TITLE
	    </title>
	  </head>
	  <body>
	    <h1>$TITLE</h1>
            <p>
              $UPDATED
            </p>
            $(system_info)
            $(system_uptime)
            $(drive_space)
            $(home_space)
	  </body>
	</html>
_EOF_
