# typed: strong

class ActiveStorage::Blob
  # class << self
  #   def create_and_upload!(
  #     key: nil,
  #     io:,
  #     filename:,
  #     content_type: nil,
  #     metadata: nil,
  #     service_name: nil,
  #     identify: true,
  #     record: nil
  #   ); end
  # end

  def download(&block); end

  sig { returns(ActiveStorage::Filename) }
  def filename; end
end
