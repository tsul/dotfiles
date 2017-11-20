#!/usr/bin/env ruby

require 'shellwords'

$ADDONS_PATH = '/Applications/World of Warcraft/Interface/AddOns'

def run
  addon_name = ARGV[0]

  print 'Deleting local install… '
  `rm -rf #{ Shellwords.escape(File.join(Dir.pwd, addon_name)) }`
  puts 'done.'

  print "Deleting link in #{ $ADDONS_PATH }… "
  `rm #{ Shellwords.escape(File.join($ADDONS_PATH, addon_name)) }`
  puts 'done.'
end

run
