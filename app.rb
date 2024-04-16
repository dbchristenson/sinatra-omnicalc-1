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
  erb :payment_new
end

get("/payment/results") do
  @apr = params.fetch("apr_input").to_f
  @years = params.fetch("years_input").to_f
  @monthly_periods = (@years * 12).to_i
  @principal = params.fetch("principal_input").to_f

  @numerator = r * (@principal)
  @denominator = 1 - ((1 + @apr) ** -@monthly_periods)

  @payment = (@numerator / @denominator).round(2)

  erb :payment_results
end

get("/random/new") do
end

get("/random/results") do
end
