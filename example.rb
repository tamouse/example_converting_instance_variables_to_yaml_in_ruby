#!/usr/bin/env ruby
$:.unshift(File.expand_path("../", __FILE__))

require 'yaml'
require 'classes.rb'
require 'instance_values_extension'

Deploy.send(:include, InstanceValuesExtension)
Params.send(:include, InstanceValuesExtension)

deployments = [
  Deploy.new(
    "device-1",
    Params.new(
      "deploy_project",
      "1",
      "deploy_project.tar.gz",
      "3",
      "2"
    ),
    ["install"]
  )
]

puts deployments.map(&:instance_values).to_yaml
