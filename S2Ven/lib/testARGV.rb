def check_if_user_gave_input
	abort("mkdir : missing input") if ARGV.empty?
end

def get_folder_name
	$folder_name = ARGV.first
	ARGV.join("")
end

def create_folder(name)
	Dir.mkdir(name)
end

def create_file(name)
	system("cd folder_name")
	system("git init").mkdir(name)
	system("rspec").mkdir(name)
	Dir.mkdir(lib)
	file = File.open("Gemfile", "a")
	file.puts("gem 'pry'")
	file.puts("gem 'dotenv'")
	file.puts("gem 'nokogiri'")
	file.puts("gem 'rspec'")
	file.puts("gem 'rubocop', '~> 0.57.2'")
	file.puts("ruby '2.5.1'")
	file.close

	file = File.open("readme.md", "a")
	file.puts("This is a ruby programm")

	file = File.open("Gemfile", "r")

	puts "Voici le contenu de ton Gemfile :"
	puts file.read
	file.close
end

check_if_user_gave_input
create_folder(get_folder_name)
create_file(get_folder_name)

