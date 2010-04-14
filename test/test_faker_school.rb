require File.dirname(__FILE__) + '/test_helper.rb'

class TestFakerSchool < Test::Unit::TestCase

  def setup
    @tester = Faker::School
  end
  
  def test_school_format_0
	name = @tester.school_specific(0)
	puts()
	puts(name)
    assert name.match(/^[A-Za-z-]+\s[A-Za-z-]+\sof\s[A-Za-z-]+$/)
  end
  
  def test_school_format_1
	name = @tester.school_specific(1)
	puts()
	puts(name)
    assert name.match(/^[A-Za-z-]+\s[A-Za-z-]+\s[A-Za-z-]+\sof\s[A-Za-z-]+$/)
  end
  
  def test_school_format_2
	name = @tester.school_specific(2)
	puts()
	puts(name)
    assert name.match(/^[A-Za-z-]+\sState\s[A-Za-z-]+$/)
  end
  
  def test_school_format_3
	name = @tester.school_specific(3)
	puts()
	puts(name)
    assert name.match(/^[A-Za-z-]+\s[A-Za-z-]+\sState\s[A-Za-z-]+$/)
  end
  
  def test_school_format_4
	name = @tester.school_specific(4)
	puts()
	puts(name)
    assert name.match(/^[A-Za-z-]+\s[A-Za-z-]+$/)
  end
  
  def test_school_format_5
	name = @tester.school_specific(5)
	puts()
	puts("5 - "+name)
    assert name.match(/^([A-Za-z- ]+)\s([A-Za-z-]+)\s([A-Za-z-]+)$/)
  end
  
  def test_school_format_6
	name = @tester.school_specific(6)
	puts()
	puts(name)
    assert name.match(/^([A-Za-z-]+)\s([A-Za-z- ]+)\s([A-Za-z-]+)\sof\s([A-Za-z-]+)$/)
  end
  
  def test_100_schools
	100.times { |i| puts(@tester.school) }
  end
end
