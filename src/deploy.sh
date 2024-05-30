#!/bin/bash

# Navigate to the application directory
cd /var/www/html/my-app

# Pull the latest code
git pull

# Install dependencies
npm install

# Stop the current application
pm2 stop app

# Start the application
pm2 start app
