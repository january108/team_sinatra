require 'sinatra'

before '/admin/*' do
    @msg = "admin area!"
end

before do
    @author = "kusakabe"
end

after do
    logger.info "page displayed successfully"
end

helpers do

    def strong(s)
        "<strong>#{s}</strong>"
    end

end

get '/' do
    @title = "main index"
    @content = "main content by " + @author
    erb :index
end

get '/about' do
    @title = "about this page"
    @content = "this page is ... by " + strong(@author)
    @email = "kusakabe@gworks.jp"
    erb :about
end





=begin

get '/:name?' do |n|
	@name = n
	@title = "main index"
	erb :index
end

get '/bye' do
	"good bye"
end

=begin
get '/hello/:name' do
  # "GET /hello/foo" と "GET /hello/bar" にマッチ
  # params['name'] は 'foo' か 'bar'
  "Hello #{params['name']}!"
end

get '/about' do
  "about this site page."
end

get '/hello/:fname/?:lname?' do |f, l|
  # "GET /hello/foo" と "GET /hello/bar" にマッチ
  # params['name'] は 'foo' か 'bar'
  "Hello #{f} #{l}"
end

get '/from/*/to/*' do |f, t|
	"from #{f} to #{t}"
end
=end
