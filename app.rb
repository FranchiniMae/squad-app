class SquadApp < Sinatra::Base
	
	get '/' do
		"Hello, World!"
	end

	get '/ideas' do
		@ideas = Idea.all
		erb :'index'
	end

end
