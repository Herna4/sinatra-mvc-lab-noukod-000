require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    # piglatinize = PigLatinizer.new
    # @latinized_word = "#{piglatinize.piglatinize(params[:user_phrase])}"

    user_word = params[:user_phrase]
    piglatinize = PigLatinizer.new
     @latinizer_word = "#{piglatinize.piglatinize(user_word)}"

    erb :pig_latinized
  end
end
