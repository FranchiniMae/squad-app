require 'rubygems'
require 'bundler'
Bundler.require

#MODELS
require './models/idea'

#CONTROLLERS
require './app'

use Rack::MethodOverride
run SquadApp