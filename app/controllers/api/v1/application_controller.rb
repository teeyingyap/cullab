class Api::V1::ApplicationController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :check_authorization

  def check_authorization
    return not_authorized_message if params["remember_token"].nil?
    user = User.find_by(remember_token: params["remember_token"])
    return not_authorized_message if user.nil?
    @current_user = user
  end

  def not_authorized_message
    render status: 403, json: {message: "No valid remember token in request"}
  end

  def current_user
    @current_user
  end
end

# [{"id":1,"user_id":1,"category_id":1,"created_at":"2017-05-18T07:15:17.078Z","updated_at":"2017-05-18T07:15:17.078Z"},
#   {"id":2,"user_id":1,"category_id":2,"created_at":"2017-05-18T07:23:27.172Z","updated_at":"2017-05-18T07:23:27.172Z"},
#   {"id":3,"user_id":1,"category_id":3,,"created_at":"2017-05-18T07:23:36.194Z","updated_at":"2017-05-18T07:23:36.194Z"}
# ]
