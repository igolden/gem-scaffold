#!/usr/bin/env ruby

require 'rubygems'
require 'commander'

class Gbrowse
  include Commander::Methods
  # include whatever modules you need

  def run
    program :name, 'scaffold'
    program :version, '0.0.1'
    program :description, 'Hello world'

    command :download_whitepapers do |c|
      c.syntax = 'scaffold download_whitepapers [options]'
      c.summary = 'Downloading the whitepapers'
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        p "DOWNLOADING"
      end
    end

    command :flashcard do |c|
      c.syntax = 'scaffold flashcard [options]'
      c.summary = 'Flashcards'
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        p "HELLO MAMA"
      end
    end

    run!
  end
end

Scaffold.new.run if $0 == __FILE__
