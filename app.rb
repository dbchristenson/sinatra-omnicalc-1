require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/square/new") do
  erb :square_new
end

get("/square/results") do
  erb :square_results
end

get("/square_root/new") do
end

get("/square_root/results") do
end

get("/payment/new") do
end

get("/payment/results") do
end

get("/random/new") do
end

get("/random/results") do
end
