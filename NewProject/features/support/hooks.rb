b = Watir::Browser.new :firefox


Before do
  @b = b
end

After do
  
end

at_exit do
	
  b.close
end