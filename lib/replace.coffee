#!/usr/bin/env coffee

# A little script to make strings substitutions
# This could probably replaced with a clever sed command, but you would have to do path slashes escaping and stuffs, while JS String.prototype.replace is so much friendlier ;)

[ key, replacement ] = process.argv.slice(2)

unless key?.length > 0 then throw new Error('missing key argument')
unless replacement?.length > 0 then throw new Error('missing replacement argument')

re = new RegExp key, 'g'

replace = (text)-> text.replace re, replacement

process.stdin
.on 'data', (buf)-> console.log replace(buf.toString())
.on 'error', (err)-> console.error err
