require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    # piglatinize = PigLatinizer.new
    # @latinized_word = "#{piglatinize.piglatinize(params[:user_phrase])}"

    text_from_user = params[:user_phrase]
    piglatinize_obj = PigLatinizer.new
     @piglatinize_text = "#{piglatinize_obj.piglatinize(text_from_user)}"
    erb :pig_latinized
  end
end
