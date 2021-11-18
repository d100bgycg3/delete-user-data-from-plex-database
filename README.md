# Delete user data from Plex database
Use the following steps to delete specific user data from the Plex database.
The following steps are written for a Plex Media Server running on a Raspbian.

Plex Media Server Version it has been tested on:

Version 1.24.5.5173

The steps might work for other Linux distributions as well. ***Use at your own risk.***

## Step 1: Get an SQLite browser
I used: "DB Browser for SQLite" (https://sqlitebrowser.org/)

## Step 2: Stop Plex Media Server
`sudo systemctl stop plexmediaserver`

## Step 3: Find the main Plex database and make a copy of it
Location of main Plex database:

https://support.plex.tv/articles/201100678-repair-a-corrupt-database-1-22-0/

For me, the database was located at:

`/var/lib/plexmediaserver/Library/Application Support/Plex Media Server/Plug-in Support/Databases/com.plexapp.plugins.library.db`

Make a copy of the database (in case you mess up):

`cp com.plexapp.plugins.library.db com.plexapp.plugins.library.db.original`

## Step 4: Open the Plex database with SQLite browser
Once opened, check the `accounts` table for every account `id` you want to delete.

## Step 5: Take SQL script from this repo, edit it and run it
Change all `WHERE` clauses to the `id` you want to delete.

Run the script.

## Step 6: Start Plex Media Server
`sudo systemctl start plexmediaserver`

Go check your Plex Media Server Dashboard. The user data is gone. Cheers.
