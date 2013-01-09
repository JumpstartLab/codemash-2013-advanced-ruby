require "parade"
require 'rubypython'
RubyPython.configure :python_exe => 'python2.6'
run Parade::Server.new
