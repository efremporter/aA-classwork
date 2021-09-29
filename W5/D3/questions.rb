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
  attr_reader :user_id
  attr_accessor :fname, :lname
  def self.find_by_id(desired_id)
    data = QuestionsDatabase.instance.execute("SELECT * FROM users WHERE id = #{desired_id}")
    User.new(data.first) 
  end

  def self.find_by_name(first_name, last_name)
    data = QuestionsDatabase.instance.execute("SELECT * FROM users WHERE fname = '#{first_name}' AND lname = '#{last_name}'") 
    User.new(data.first) 
  end

  def initialize(options) 
    @fname = options['fname']
    @lname = options['lname']
    @user_id = options['id']
  end

  def authored_questions
    Question.find_by_author_id(self.user_id)
  end

  def authored_replies
    Reply.find_by_user_id(self.user_id)
  end

end

class Question
  attr_accessor :title, :body, :author_id
  def self.find_by_id(desired_id)
    data = QuestionsDatabase.instance.execute("SELECT * FROM questions WHERE id = #{desired_id}") 
    Question.new(data.first) 
  end

  def self.find_by_author_id(desired_id)
    data = QuestionsDatabase.instance.execute("SELECT * FROM questions WHERE author_id = #{desired_id}") 
    Question.new(data.first) 
  end

  def initialize(options) 
    @title = options['title']
    @body = options['body']
    @author_id = options['author_id']
  end

  def author
    data = QuestionsDatabase.instance.execute("SELECT * FROM users WHERE id = #{author_id}") 
    User.new(data.first)
  end

  def replies
    data = QuestionsDatabase.instance.execute("SELECT * FROM replies WHERE id = #{author_id}") 
    User.new(data.first)
  end

end

class QuestionFollow
  attr_accessor :user_id, :question_id
  def self.find_by_id(desired_id)
    data = QuestionsDatabase.instance.execute("SELECT * FROM question_follows WHERE id = #{desired_id}") 
    QuestionFollow.new(data.first) 
  end

  def initialize(options) #takes in a hash
    @user_id = options['user_id']
    @question_id = options['question_id']
  end

end

class Reply
  attr_accessor :body, :parent_reply, :subject_question, :replying_user
  def self.find_by_id(desired_id)
    data = QuestionsDatabase.instance.execute("SELECT * FROM replies WHERE id = #{desired_id}")
    Reply.new(data.first) 
  end

  def self.find_by_user_id(desired_id)
    data = QuestionsDatabase.instance.execute("SELECT * FROM replies WHERE replying_user = #{desired_id}")
    Reply.new(data.first)
  end

  def self.find_by_question_id(desired_id)
    data = QuestionsDatabase.instance.execute("SELECT * FROM replies WHERE subject_question = #{desired_id}")
    data.map { |row| Reply.new(row) }
  end

  def initialize(options) 
    @body = options['body']
    @parent_reply = options['parent_reply']
    @subject_question = options['subject_question']
    @replying_user = options['replying_user']
  end

  def author
    data = QuestionsDatabase.instance.execute("SELECT * FROM users WHERE id = #{replying_user}") 
    User.new(data.first)
  end

  def question
    data = QuestionsDatabase.instance.execute("SELECT * FROM questions WHERE id = #{subject_question}") 
    Question.new(data.first)
  end

end

class QuestionLike
  attr_accessor :users_id, :questions_id
  def self.find_by_id(desired_id)
    data = QuestionsDatabase.instance.execute("SELECT * FROM question_likes WHERE id = #{desired_id}")
    QuestionLike.new(data.first) 
  end

  def initialize(options) 
    @users_id = options['users_id']
    @questions_id = options['questions_id']
  end

end