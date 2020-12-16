require_relative "database"

class User
    attr_accessor :id, :fname, :lname 

    def self.find_by_id(id)
        # raise "#{self} not in database" unless self.id
        person = QuestionsDatabase.instance.execute(<<-SQL, id)
            SELECT *
            FROM users
            WHERE id = ?
        SQL
        return nil unless person.length > 0
        User.new(person.first)
    end

    def initialize(options)
        @id = options["id"]
        @fname = options["fname"]
        @lname = options["lname"]
    end


end