browser = Watir::Browser.new :firefox


Before do
  @boo = browser
end

After do
  
end

#at_exit do
#	
#  @boo.close
#end