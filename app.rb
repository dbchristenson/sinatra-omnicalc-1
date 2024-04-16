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
  @square = (@number ** 2)

  erb :square_results
end

get("/square_root/new") do
  erb :sqrt_new
end

get("/square_root/results") do
  @number = params.fetch("number").to_f
  @square_root = Math.sqrt(@number)

  erb :sqrt_results
end

get("/payment/new") do
  erb :payment_new
end

get("/payment/results") do
  apr = params.fetch("apr").to_f
  @apr = format('%.4f', apr) + '%'
  @years = params.fetch("years").to_f
  @monthly_periods = (@years * 12).to_i
  principal = params.fetch("principal").to_f.round(2)
  @principal = sprintf("$%.2f", principal)

  r = (apr / 100) / 12
  @numerator = r * (principal)
  @denominator = 1 - ((1 + r) ** -@monthly_periods)

  @payment = sprintf("$%.2f", (@numerator / @denominator))

  erb :payment_results
end

get("/random/new") do
  erb :random_new
end

get("/random/results") do
  @min = params.fetch("user_min").to_f
  @max = params.fetch("user_max").to_f

  @result = rand(@min..@max)

  erb :random_results
end
