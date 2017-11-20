#!/usr/bin/env ruby

require 'json'
require 'net/http'
require 'shellwords'
require 'optparse'

$ADDONS_PATH = '/Applications/World of Warcraft/Interface/AddOns'

def run(use_latest_release:)
  if !Dir.exists? $ADDONS_PATH
    puts 'Install directory wasn’t found.'
    return
  end

  repo_path      = ARGV[0]
  repo_uri       = URI("https://api.github.com/repos/#{ repo_path }")
  repo_json      = Net::HTTP::get repo_uri
  repo           = JSON.parse repo_json
  repo_clone_url = repo['clone_url']
  repo_name      = repo['name']

  if Dir.exists? repo_name
    puts "#{ repo_name } is already installed."
  else
    puts "Installing #{ repo_name }…"

    `git clone #{ repo_clone_url }`

    puts 'Done.'
  end

  if File.exists? File.join($ADDONS_PATH, repo_name)
    puts "Link to #{ repo_name } already exists in #{ $ADDONS_PATH }."
  else
    print "Linking into #{ $ADDONS_PATH }… "

    `ln -s \
     #{ Shellwords.escape(File.join(Dir.pwd, repo_name)) } \
     #{ Shellwords.escape($ADDONS_PATH) }`

    puts 'done.'
  end

  if use_latest_release
    releases_uri  = repo_uri + "#{ repo_name }/releases"
    releases_json = Net::HTTP::get releases_uri
    releases      = JSON.parse releases_json

    if latest_release = releases[0]
      release_tag  = latest_release['tag_name']
      release_name = latest_release['name']

      puts "Selecting latest release for #{ repo_name } (#{ release_name })…"

      `cd #{ Shellwords.escape(repo_name) } && \
        git checkout tags/#{ Shellwords.escape(release_tag) } && \
        cd ..`

      puts 'Done.'
    else
      puts "No releases found for #{ repo_name }. Using HEAD."
    end
  else
    puts 'Using HEAD.'
  end
end

options = {
  use_latest_release: false,
}

option_parser = OptionParser.new do |parser|
  parser.banner = (
    "Usage: #{ __FILE__ } [repo path (e.g., kxseven/Clique)] [options]"
  )

  parser.on('-l', '--latest', 'Use latest release') do |v|
    options[:use_latest_release] = true
  end

  parser.on_tail('-h', '--help', 'Show this message') do
    puts parser
    exit
  end
end

option_parser.parse! ARGV

run options
