require_relative 'user'

class Simple
  def initialize(user)
    @user = user
  end

  def full_name
    #multi-line memoization
    @full_name ||= begin
      puts 'Full name is calculated'
      sleep 2
      "#{@user.first_name} #{@user.last_name}"
    end
  end
end

<<-DOC
user = User.first
simple = Simple.new(user)
puts simple.full_name
DOC