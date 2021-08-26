import os
import sys
import hashlib
import requests
from jproperties import Properties

#NOTES: please install 'jproperties' and 'requests' with pip
# Run in Python3 plz

# This python script will pull the latest resource pack specified in server.properties and update the sha1 hash of the pack
# This lets the user client automatically update the resource pack without the need to replace the file name
# Please set the SERVER_PROPERTIES variable so that the correct server.propertie can be found.

#Variables that need to be set.
SERVER_PROPERTIES = './server.properties' #MAKE SURE THIS IS RIGHT
BUFFER_SIZE = 65536 #this is for hashing the file

#parsing server.properties 
server_config = Properties()
try:
    with open(SERVER_PROPERTIES, 'rb') as properties_file:
        server_config.load(properties_file)
except:
    print('Could not find server.properties, check config please.')
    exit(1)

#check to see if keys exist
try:
    current_hash = server_config['resource-pack-sha1'].data
except:
    current_hash = ''
try:
    file_download_location = server_config['resource-pack'].data
except:
    file_download_location = ''

if not file_download_location:
    print('No resource pack was specified.')
    exit(1)

#download the pack
download = requests.get(file_download_location)
if download.status_code != 200:
    print('Could not download specified file.')
    exit(1)
file_name = file_download_location.split('/')[-1]
try:
    open(file_name,'wb').write(download.content)
except:
    print('Could not write resource pack file.')
    exit(1)

#hash the pack
try:
    new_pack = open(file_name,'rb')
except:
    print('Could not access written resource pack file')
    exit(1)

sha1 = hashlib.sha1()
while True:
    data = new_pack.read(BUFFER_SIZE)
    if not data:
        break
    sha1.update(data)
final_hash = sha1.hexdigest()
#check if this hash is the same as the current
if final_hash == current_hash:
    print('No new update was detected.')
else:
    #update the hash if it is new
    print('New update was detected.')
    server_config['resource-pack-sha1'] = final_hash
    try:
        #create a backup server config incase we destroy the current one
        with open("server_backup.properties", "wb") as backup:
            server_config.store(backup)
        #write the new updated hash to properties file
        with open(SERVER_PROPERTIES, 'wb') as properties_file:
            server_config.store(properties_file)
    except:
        print('Could not update server.properties file')
        exit(1)
    print(f'Previous hash: {current_hash}')
    print(f'New hash: {final_hash}')
    print('Restart the server to reload server.properties.')
exit(0)