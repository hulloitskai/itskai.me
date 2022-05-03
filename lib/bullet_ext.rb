# typed: true
# frozen_string_literal: true

class Bullet::Notification::Base
  # Don't log user.
  def whoami
    nil
  end
end
