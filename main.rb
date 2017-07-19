require 'sinatra'


before do
	@author = "collabo3 久田　宮崎　張　日下部"
end



helpers do

	def strong(s)
		"<strong>#{s}</strong>"
	end

end

get '/' do
	@title = "team3's index page"
	@content = "this page is made by  " + strong(@author)
	@name = ""
	erb :index
end

post '/' do
	@title = "team3's index page2"
	@content = "Post sucsessed ! "
	@name = @params[:name]
	erb :index
end
