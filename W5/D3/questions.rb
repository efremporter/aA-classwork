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

  def self.find_by_id
    data = QuestionsDatabase.instance.execute(SELECT * FROM users WHERE id = )
  end
end