get '/' do
  # Look in app/views/index.erb

  redirect '/urls'
end

get '/urls' do
  @urls = Url.all
  erb :urls
end

get '/urls/new' do
  @urls = Url.all
  erb :new_url
end

post '/urls' do

  new_url = Url.new(long: params[:long])
  new_url.save
  redirect '/urls'
end

get '/urls/:short' do
  url = Url.find_by(short: params[:short])
  redirect "http://#{url.long}"
end
