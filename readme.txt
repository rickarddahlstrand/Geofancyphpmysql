This is an simple php & mysql-backend that stores Geofence activities and allows you to take actions (turn on lights, send messages etc).

It works with both Geofancy http://geofancy.com and Geofency http://geofency.com (use whichever suits you best).

It stores all the geofence-events in an database and supports http/https/ssh-actions.

This can be used on it's own or as a base for more advanced timekeeping applications. 

Instructions:

1. Create a MYSQL database
2. Run the geolog.sql and actions.sql to create the tables.
3. Create a user/password with access to the geolog-database and table
4. Copy the geotrigger.php to a webserver with PHP and Mysql-client extensions.
5. Update geotrigger.php with your mysql-config, username, password etc.
6. Go to the app and trigger a test-even from settings.
7. Check the table for successful logging or else troubleshoot.

Good luck!
