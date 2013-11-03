#!/usr/bin/env ruby

require 'fileutils'

FileUtils.cd 'carroll_st' do
  Dir['*.png'].each do |file|
  puts file
    `convert #{file} -thumbnail '200x144' thumbs/#{file}`
  end
end

FileUtils.cd 'ledge' do
  Dir['*.jpeg'].each do |file|
  puts file
    `convert #{file} -thumbnail '200x144' thumbs/#{file}`
  end
end
