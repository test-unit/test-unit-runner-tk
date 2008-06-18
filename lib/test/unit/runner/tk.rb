require 'test/unit'

module Test
  module Unit
    AutoRunner.register_runner(:tk) do |auto_runner|
      require 'test/unit/ui/tk/testrunner'
      Test::Unit::UI::Tk::TestRunner
    end

    module Runner
      module Tk
        VERSION = "0.0.2"
      end
    end
  end
end
