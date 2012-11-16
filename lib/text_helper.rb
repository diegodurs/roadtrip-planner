module TextHelper
  def pluralize(nb, str)
    (nb.to_i > 1) ? "#{nb} #{str}s" : "#{nb} #{str}"
  end
end


class String
  def to_url
    self.downcase.split(' ').join('-')
  end
end