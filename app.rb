require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do

    @analyzed_text = TextAnalyzer.new(params[:user_text])
    #puts @analyzed_text.text.chars.group_by{|i|i}.map {|key, value| "#{value.size}" }.first.capitalize
    #binding.pry
    erb :results
  end
end
