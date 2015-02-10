# greeter.rb

class Greeter
  def greet

	get '/hi' do
	"Hi, I am Frank!"
	end
 	
  end

  def quote(tag)
	get '/quote/:tag' do
	  quotes = {
	    :life => [
	      "The best is yet to come.",
	      "The best revenge is massive success."
	    ],
	    :love => [
	      "....A simple I love you means more than money....",
	      "For nobody else, gave me thrill-with all your faults, I love you still. It had to be you, wonderful you, it had to be you."
	    ]
	  }

	  [
	    "<h2>Quotes matching tag: '#{params[:tag]}'</h2>",
	    "<ul>"
	    # Got an array with two string elements. Interplating the value of params tag
	  ].concat(
	    quotes[params[:tag].to_sym].map do |quote|
	      "<li><h3>#{quote}</h3></li>"
	    end
	  ).push("</ul>")


  end
end