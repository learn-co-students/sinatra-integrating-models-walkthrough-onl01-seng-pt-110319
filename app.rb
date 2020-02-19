require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    #which renders the index.erb page
    erb :index
  end

  post '/' do
    #recieves the form data through params and renders the results.erb page
    @analyzed_text = TextAnalyzer.new(params[:user_text])
 
    erb :results
  end
end
