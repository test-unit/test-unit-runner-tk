# -*- ruby -*-

require 'rubygems'
gem 'test-unit'
require 'hoe'
require './lib/test/unit/runner/tk'

Test::Unit.run = true

version = Test::Unit::Runner::Tk::VERSION
ENV["VERSION"] = version
Hoe.new('test-unit-runner-tk', version) do |p|
  p.developer('Kouhei Sutou', 'kou@cozmixng.org')
  p.developer('Ryan Davis', 'ryand-ruby@zenspider.com')

  p.extra_deps = ["test-unit"]
end

task :tag do
  message = "Released Test::Unit::Runner::Tk #{version}!"
  sh "git", "tag", version, "-m", message
  sh "git", "push", "--tags"
end

# vim: syntax=Ruby
