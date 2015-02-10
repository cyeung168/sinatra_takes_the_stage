# app.rb

require 'sinatra'
require 'sinatra/reloader'
require 'better_errors'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

# our application's routes
get '/hi' do
  "Hi, I am Frank!"
end


# get '/quote/life' do
# 	"The big lesson in life, baby, is never be scared of anyone or anything."
# end

# get '/quote/love' do
# 	"For nobody else, gave me thrill-with all your faults, I love you still. It had to be you, wonderful you, it had to be you."
# end

# get '/quote/alcohol' do
# 	"Alcohol may be man's worst enemy, but the bible says love your enemy."
# end
# ------------------------------
# return quotes matching a tag
# get '/quote/:tag' do
#   # raise an error unless the tag is 'life'
#   # because sinatra had some good life lessons for us all
#   # raise "tag must not be anything but 'life'" if params[:tag] != 'life'
#   # "You've requested a quote for tag: '#{params[:tag]}'"

#   quotes = {
#   	:life => [
#   		"The big lesson in life, baby, is never be scared of anyone or anything.",
#   		"The best revenge is massive success."
#   	]
#   	:love => [
#  		"For nobody else, gave me thrill-with all your faults, I love you still. It had to be you, wonderful you, it had to be you.",
#  		"....A simple I love you means more than money...."
#   	]
#   }
# # quotes[params[:tag].to_sym]
# 	[
# 	    "<h2>Quotes matching tag: '#{params[:tag]}'</h2>",
# 	    "<ul>"
#   	].concat(
# 	    quotes[params[:tag].to_sym].map do |quote|
# 	      "<li><h3>#{quote}</h3></li>"
#     end
#   ).push("</ul>")
# end
# -------------------------------------

# return quotes matching a tag
# get '/quote/:tag' do
#   quotes = {
#     :life => [
#       "The best is yet to come.",
#       "The best revenge is massive success."
#     ],
#     :love => [
#       "....A simple I love you means more than money....",
#       "For nobody else, gave me thrill-with all your faults, I love you still. It had to be you, wonderful you, it had to be you."
#     ]
#   }

#   [
#     "<h2>Quotes matching tag: '#{params[:tag]}'</h2>",
#     "<ul>"
#     # Got an array with two string elements. Interplating the value of params tag
#   ].concat(
#     quotes[params[:tag].to_sym].map do |quote|
#       "<li><h3>#{quote}</h3></li>"
#     end
#   ).push("</ul>")
#   # Concat between arrays is another array
#   # Taking the quotes hash and converting the strings into symbols
#   # And mapping each quote to do ---> (Map returns an array)
#   # interperlates quote into a string containing HTML elements in line 

#  # push the last string into the new array
# end
#--------------------------------

# return quotes matching a tag
get '/quote/:tag' do
	@frank.quote(params[:tag])
end


# default /quote route
get '/quote' do
  "The best is yet to come and won't that be fine."
end
