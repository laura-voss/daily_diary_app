require 'sinatra/base'
require 'sinatra/reloader'

class DailyDiaryApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello World'
  end

  run! if app_file == $0
end