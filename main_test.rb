if ENV['CIRCLE_ARTIFACTS']
  require 'simplecov'
  dir = File.join('..', '..', '..', ENV['CIRCLE_ARTIFACTS'], 'simplecov')
  SimpleCov.coverage_dir(dir)
  SimpleCov.start
end

require 'minitest/autorun'
require './main'


class TestPPAP < Minitest::Test

  def test_ppap
    assert_instance_of PenPinappleApplePen, PPAP.new.sing
  end

end
