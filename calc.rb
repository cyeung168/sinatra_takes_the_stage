require 'sinatra'
require 'sinatra/reloader'
require 'better_errors'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

get '/add/:num1/:num2' do
	# num1 + num2
	# "This is number 1 #{params[:num1]}"
	num1 = params[:num1].to_i
	num2 = params[:num2].to_i
	"The sum is #{num1 + num2}"
	# params[:num1].to_i + params[:num2].to_i
end

get '/sub/:num1/:num2' do 
	num1 = params[:num1].to_i
	num2 = params[:num2].to_i
	"The difference is #{num1 - num2}"
end

get '/mul/:num1/:num2' do 
	num1 = params[:num1].to_i
	num2 = params[:num2].to_i
	"The product is #{num1 * num2}"
end

get '/div/:num1/:num2' do 
	num1 = params[:num1].to_i
	num2 = params[:num2].to_i
	# "The quotient is #{num1 / num2}"
	begin
		"The quotient is #{num1 / num2}"
		rescue ZeroDivisionError
	    	true
	  	else
	    	false
	end
end