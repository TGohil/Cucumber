class GenericPage
  include RSpec::Matchers
  attr_accessor :browser
  
  LOC = ""
  ELEMENT = {}
  
  def el
    raise "no such element in ELEMENTS hash" unless ELEMENTS.include? key
    @browser.element(ELEMENT[key])
  end
  
  def initialize(browser)
    @b = browser
  end
  
  def element_exists?(el)
    @b.element(el).exists?
  end
  
  def title
    @b.title
  end
  
  def url
    @b.url
  end
end
  