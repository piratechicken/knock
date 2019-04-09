module Knock
  class ApplicationController < ActionController::Base
    rescue_from Knock.not_found_exception_class_name, with: :not_found
    # rescue_from Knock.wrong_pw_exception_class_name, with: :wrong_pw

  private

    def not_found
      # render json: {msg: "Email not found"}, status: :not_found
    end

    # def wrong_pw
    #   render json: {msg: "Wrong password"}, status: :not_found
    # end
  end
end
