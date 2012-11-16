require 'active_support/all'

# $LOAD_PATH.unshift( File.join( File.dirname(__FILE__), 'lib' ) )
$: << './lib'

require 'state'
require 'database'
require 'dsl_seeder'
require 'ruby_seeder'
require 'strategies/table_strategy'

puts 'Classes loaded'

DB = Database.new( DslSeeder.new )
# DB = Database.new( RubySeeder.new )
# data = DslSeeder.new do
#   first 'Bruxelles' do
#     city 'Etterbeek', 5
#     city 'Anderlecht', 1
#     start_at 2013, 1, 1
#   end

#   step 'Brabant Wallon' do
#     travel 'Namur', 1
#     city 'Namur', 2
#     city 'Lasne', 4
#   end
# end
# DB = Database.new( data )

puts 'DB loaded'

str = TableStrategy.new.print( DB )
File.open('index.html', 'w') {|f| f.write(str) }


str = DslSeeder.generate_dsl_from_db( DB )
File.open('db/dsl.rb', 'w') {|f| f.write(str) }

# DB.each do |state|
#   puts state.name
# end

# DB.find_state('Illinois')

# DB.each do |state|
#   puts state.to_html
# end
