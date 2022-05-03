# typed: strict
# frozen_string_literal: true

Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "pages#home"

  # prettier-ignore
  if Rails.env.development?
    mount Lookbook::Engine, at: "/rails/lookbook"
  end
end
