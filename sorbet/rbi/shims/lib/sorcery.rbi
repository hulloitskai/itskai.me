# typed: ignore

class ActiveRecord::Base
  extend Sorcery::Model
end

class ActionController::API
  include Sorcery::Controller
end
