class SquadApp < Sinatra::Base
	
	#home page before seeing ideas
	get '/' do
		@ideas = Idea.all
		erb(:"home")
	end

	#index 
	get '/ideas' do
		@ideas = Idea.all
		erb(:"index")
	end

	#create
	get '/ideas/new' do
		erb(:"ideas/new")
	end

	#create
	post '/ideas' do
		@idea = Idea.create(params[:idea])
		@idea.save
		redirect("/ideas")
	end
	#took out "s" from @idea

	#show
	get '/ideas/:id' do
		@idea = Idea.find(params[:id])
		erb(:"show")
	end

	#edit
	get '/ideas/:id/edit' do
		@idea = Idea.find(params[:id])
		erb(:"ideas/edit")
	end

	#update
	put 'ideas/:id' do
		@idea = Idea.find(params[:id])
		if @idea.update_attributes(params[:idea])
			redirect('/ideas/#{idea.id}')
		else
			erb(:"ideas/edit")
		end
	end 

	#delete
	delete '/ideas/:id/delete' do
		@idea = Idea.find(params[:id])
		if @idea.destroy
		  redirect("/ideas")
		else 
		  redirect("/ideas/#{@idea.id}")
		end 
	end

end
