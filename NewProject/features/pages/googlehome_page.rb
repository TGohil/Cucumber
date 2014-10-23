class GoogleHomePage < GenericPage
  
  LOC = "http://google.com"
  ELEMENTS = {
    search_field: "#gbqfq",
    search_button: "#gbqfb"
  }
  
  def visit
    @b.goto "google.co.uk"
  end
  
  def search_box
    #@b.text_field(id: "gbqfq").set value
    @b.element(css: ELEMENTS[:search_field])
  end
  
  def search_box=(term)
    @b.text_field(id: "gbqfq").set term
  end
  
  def search_for(term)
    self.search_box = term
    self.search_button.when_present.click
  end
  
  def search_button
    #@b.button(id: "gbqfb")
    @b.element(css: ELEMENTS[:search_button])
  end
end





