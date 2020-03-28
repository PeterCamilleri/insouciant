require_relative '../lib/insouciant'
gem              'minitest'
require          'minitest/autorun'

class InsouciantTest < Minitest::Test

  def test_that_it_has_a_version_number
    refute_nil ::Insouciant::VERSION
    assert(::Insouciant::VERSION.frozen?)
    assert(::Insouciant::VERSION.is_a?(String))
    assert(/\A\d+\.\d+\.\d+/ =~ ::Insouciant::VERSION)
  end

  def test_that_it_has_a_description
    refute_nil(::Insouciant::DESCRIPTION)
    assert(::Insouciant::DESCRIPTION.frozen?)
    assert(::Insouciant::DESCRIPTION.is_a?(String))
  end

  def test_no_worries
    assert_equal(12.0, insouciant { 36.0/3.0 } )

    assert_equal("divided by 0", insouciant { 1/0 } )
    assert_nil(insouciant(nil) { 1/0 } )
    assert((insouciant(Float::NAN) { 1/0 }).nan?)
  end

  def test_no_warnings
    assert_silent { insouciant { warn "foo" } }
  end

end
