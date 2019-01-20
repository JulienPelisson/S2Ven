require 'launchy'


def check_if_user_gave_input
	abort("You need to put a query jizzbag") if ARGV.empty?
end

def get_query_name
	query_name = "https://www.google.com/search?q=" + ARGV.join("+")

end

def create_query(name)
	Launchy.open(name)
end

check_if_user_gave_input
create_query(get_query_name)
