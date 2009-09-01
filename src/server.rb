require 'webrick'
 
@server = WEBrick::HTTPServer.new :Port => 9852, :DocumentRoot => File.dirname(__FILE__)
trap("INT"){ @server.shutdown }
@server.start