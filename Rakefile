# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

require 'rubygems'
require 'motion-cocoapods'

Motion::Project::App.setup do |app|
  app.name = 'aftest'
  app.frameworks += %w(SystemConfiguration)
  app.pods do
    pod 'AFNetworking'
  end
end
