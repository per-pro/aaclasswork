require_relative "database"

class Reply
    attr_accessor :id, :body, :user_id, :question_id

    def self.find_by_id(id)
        reply = QuestionsDatabase.instance.execute(<<-SQL, id)
            SELECT *
            FROM replies
            WHERE id = ?
        SQL
        return nil unless reply.length > 0
        Reply.new(reply.first)
    end

    def self.find_by_user_id(user_id)
        reply = QuestionsDatabase.instance.execute(<<-SQL, user_id)
            SELECT *
            FROM replies
            WHERE user_id = ?
        SQL
        return nil unless reply.length > 0
        Reply.new(reply.first)
    end

    def self.find_by_question_id(question_id)
        reply = QuestionsDatabase.instance.execute(<<-SQL, question_id)
            SELECT *
            FROM replies
            WHERE question_id = ?
        SQL
        return nil unless reply.length > 0
        Reply.new(reply.first)
    end

    def initialize(options)
        @id = options["id"]
        @body = options["body"]
        @user_id = options["user_id"]
        @question_id = options["question_id"]
        @reply_id = options["reply_id"]
    end


end