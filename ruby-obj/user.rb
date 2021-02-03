require 'json'

class User
    USERS = [
        { id: 1, first_name: 'john', last_name: 'Doe', email: 'john.doe@example.com' },
        { id: 2, first_name: 'jane', last_name: 'Doe', email: 'jane.doe@example.com' }
    ]

    #class method
    class << self
        def find(id)
            self.new.find(id)
        end

        def first
            self.new.first
        end

        def all
            return unless USERS.size > 0
            self.new.all
        end
    end

    def find(id)
        user = find_user_by_id(id)
        objectify_user(user)
    end

    def first
        objectify_user(USERS.first)
    end

    def all
       USERS.map { |user| objectify_user(user) }
    end

    private
    def find_user_by_id(id)
        return unless id
        USERS.find { |user| user[:id] == id }
    end

    def objectify_user(user)
       return unless user
        JSON.parse(user.to_json, object_class: OpenStruct)
    end
end

#one can retreive objects from the constant as it is with Active Record
<<-DOC
  user = User.new
  puts user = User.find(1) -> returns user_id(1)
  puts User.first
  puts User.all
DOC



