require_relative "database"

class Question
    attr_accessor :id, :title, :body, :user_id

    def self.find_by_id(id)
        raise "#{self} not in database" unless self.id
        question = QuestionsDatabase.instance.execute(<<-SQL, id)
            SELECT *
            FROM questions
            WHERE id = ?
        SQL
        return nil unless question.length > 0
        Question.new(question)
    end

    def initialize(options)
        @id = options["id"]
        @title = options["title"]
        @body = options["body"]
        @user_id = options["user_id"]
    end


end