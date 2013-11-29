This is an simple php & mysql-backend to the iOS-app Geofancy http://geofancy.com that stores all the geofence-events in an simple database.

This can be used on it's own or as a base for more advanced timekeeping applications. 

Instructions:

1. Create a MYSQL database
2. Run the geolog.sql script to create the geolog-table.
3. Create a user/password with access to the geolog-database and table
4. Copy the geotrigger.php to a webserver with PHP and Mysql-client extensions.
5. Update geotrigger.php with your mysql-config, username, password etc.
6. Go to the app and trigger a test-even from settings.
7. Check the table for successful logging or else troubleshoot.

Good luck!
