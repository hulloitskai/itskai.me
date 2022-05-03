# typed: strict
# frozen_string_literal: true

class ModalComponent < ViewComponent::Base
  renders_one :trigger
  renders_one :header
  renders_one :body
  renders_one :footer
end
