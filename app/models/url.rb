class Url < ApplicationRecord
  before_save :random_url

  def generate_slug
    7.times.map { @options.sample }.join
  end

  def random_url
    @options = ("A".."Z").to_a + ("a".."z").to_a + (1..9).to_a
    generated = generate_slug
      until Url.where(short:generated).empty?
        generated = generate_slug
      end
    self.short = generated
  end
end
