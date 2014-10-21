b = Watir::Browser.new :firefox


Before do
  @b = b
binding.pry
end

After do
  
end

at_exit do
	
  b.close
end