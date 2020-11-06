class SecretsController < ActionController::Base
    before_action :require_login

    def show
    end

    private

    def require_login
        unless session.include? :name
            redirect_to login_path
        end
    end
end