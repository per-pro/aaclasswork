require_relative "database"

class Reply
    attr_accessor :id, :body, :user_id, :question_id

    def self.find_by_id(id)
        raise "#{self} not in database" unless self.id
        reply = QuestionsDatabase.instance.execute(<<-SQL, id)
            SELECT *
            FROM replies
            WHERE id = ?
        SQL
        return nil unless reply.length > 0
        Reply.new(reply)
    end

    def initialize(options)
        @id = options["id"]
        @body = options["body"]
        @user_id = options["user_id"]
        @question_id = options["question_id"]
        @reply_id = options["reply_id"]
    end


end