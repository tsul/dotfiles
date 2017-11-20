#!/usr/bin/env ruby

require 'json'
require 'net/http'
require 'shellwords'

$ADDONS_PATH = '/Applications/World of Warcraft/Interface/AddOns'

def run
  if !Dir.exists? $ADDONS_PATH
    puts 'Install directory wasn’t found.'
    return
  end

  repo_path      = ARGV[0]
  repo_json      = Net::HTTP::get URI("https://api.github.com/repos/#{ repo_path }")
  repo           = JSON.parse repo_json
  repo_clone_url = repo['clone_url']
  repo_name      = repo['name']

  if Dir.exists? repo_name
    puts "#{ repo_name } is already installed."
    return
  end

  `git clone #{ repo_clone_url }`

  print "Linking into #{$ADDONS_PATH}, "
  `ln -s \
   #{ Shellwords.escape(File.join(Dir.pwd, repo_name)) } \
   #{ Shellwords.escape($ADDONS_PATH) }`
  puts 'done.'
end

run
