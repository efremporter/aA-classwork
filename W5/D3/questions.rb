require 'sqlite3'
require 'singleton'

class QuestionsDatabase < SQLite3::Database
  include Singleton

  def initialize
    super('questions.db')
    self.type_translation = true
    self.results_as_hash = true
  end
end

class User
  
  def self.find_by_id(desired_id)
    data = QuestionsDatabase.instance.execute(SELECT * FROM users WHERE id = desired_id) #takes in data from Users db as array of rows
    User.new(data.first) #maps array of rows to array of User instances
  end

  def initialize(options) #takes in a hash
    @fname = options['fname']
    @lname = options['lname']
  end

end