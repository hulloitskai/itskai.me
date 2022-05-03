# typed: strong

class Addressable::URI
  sig { params(uri: String).returns(Addressable::URI) }
  def self.parse(uri); end

  sig { returns(String) }
  def path; end
end
