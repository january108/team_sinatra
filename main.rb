require 'sinatra'


before do
	@author = "kusakabe"
end



helpers do

	def strong(s)
		"<strong>#{s}</strong>"
	end

end

get '/index' do
	@title = "index page"
	@content = "this page is made by  " + strong(@author)
	@name = ""
	erb :index

end

post '/index' do
	@title = "index page2"
	@content = "Post sucsessed ! "
	@name = @params[:name]
	erb :index
end