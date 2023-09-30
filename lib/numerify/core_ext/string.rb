# frozen_string_literal: true

# A patch to add the convert method to the String class.
class String
  def convert(to: :geez)
    "convert #{self} to #{to}"
  end
end
