require "sinatra"
require "sinatra/reloader"

get("/") do
  erb :square_new
end

get("/square/new") do
  erb :square_new
end

get("/square/results") do
  @number = params.fetch("number").to_f
  @square = (@number ** 2).round(2)

  erb :square_results
end

get("/square_root/new") do
  erb :sqrt_new
end

get("/square_root/results") do
  @number = params.fetch("number").to_f
  @square_root = Math.sqrt(@number).round(2)

  erb :sqrt_results
end

get("/payment/new") do
end

get("/payment/results") do
end

get("/random/new") do
end

get("/random/results") do
end
