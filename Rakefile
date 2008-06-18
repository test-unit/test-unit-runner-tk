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

  p.rubyforge_name = "test-unit"
end

task :tag do
  message = "Released Test::Unit::Runner::Tk #{version}!"
  base = "svn+ssh://#{ENV['USER']}@rubyforge.org/var/svn/test-unit/extensions/test-unit-runner-tk/"
  sh 'svn', 'copy', '-m', message, "#{base}trunk", "#{base}tags/#{version}"
end

# vim: syntax=Ruby
