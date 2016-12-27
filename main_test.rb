if ENV['CIRCLE_ARTIFACTS']
  require 'simplecov'
  SimpleCov.start
end

require 'minitest/autorun'
require './main'


class TestPPAP < Minitest::Test

  def test_ppap
    assert_instance_of PenPinappleApplePen, PPAP.new.sing
  end

end
