<?php

#
# Copyright (c) 2013 Rickard Dahlstrand, Tilde All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
# IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
# GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER
# IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
######################################################################

# Some stuff I need to stop PHP for complaining on my servers, change to whatever..
date_default_timezone_set('Europe/Stockholm');
setlocale("LC_ALL","sv_SE");

# Connect to mysql-server
mysql_connect('localhost', 'geo_admin', 'geo_admin_password');
mysql_select_db('geo');

# Read all the values from the request and put them i vars.
$device = addslashes($_REQUEST['device']);
$id = addslashes($_REQUEST['id']);
$latitude = addslashes($_REQUEST['latitude']);
$longitude = addslashes($_REQUEST['longitude']);
$trigger = addslashes($_REQUEST['trigger']);

# Create query to write to DB.
$query = "insert into geolog (`device`, `locationid`, `latitude`, `longitude`, `trigger`, `datetime`) values ('".$device."', '".$id."', '".$latitude."', '".$longitude."', '".$trigger."', now());";

# Write to DB.
$ret = mysql_query($query);

# Send back an ACK that the position was stored or error if there was an error.
if ( $ret === false ){
	echo "Error writing to DB..";
} else {
	echo "You triggered an ".$trigger." at ".$id."";
}

?>