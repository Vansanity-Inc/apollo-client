#!/bin/bash

rm -rf dist

npm run build

# delete source files and move built files from dist directory into current directory
find ~/Documents/app/node_modules/@apollo/client -mindepth 1 -maxdepth 1 ! -name "node_modules" -exec rm -rf {} +

cp -r dist/* ~/Documents/app/node_modules/@apollo/client
