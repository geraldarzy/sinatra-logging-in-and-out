require 'sinatra/base'
class Helpers
    def self.current_user(shash)
        User.find(shash[:user_id])
    end
    def self.is_logged_in?(shash)
        !!session[:id]
    end
end