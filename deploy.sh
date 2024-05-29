#!/bin/bash
set -e

# Navigate to the project directory
cd /var/www/html

# Pull the latest changes
git pull origin main

# Install dependencies and build the project (example for Node.js)
npm install
npm run build

# Restart the application (example for PM2)
pm2 restart all
