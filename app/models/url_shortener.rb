class UrlShortener < ApplicationRecord
  before_save :generate_short_url, :sanitize_data

  def to_param
    self.short_url.to_s
  end

  private
    def generate_short_url
      self.short_url = SecureRandom.urlsafe_base64(3)
    end

    def sanitize_data
      unless self.long_url.include?("https") || self.long_url.include?("http")
        self.long_url = "https://#{self.long_url}"
      end
    end
end
