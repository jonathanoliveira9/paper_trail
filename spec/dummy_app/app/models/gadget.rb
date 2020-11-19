# frozen_string_literal: true

class Gadget < ActiveRecord::Base
  has_paper_trail ignore: [:brand, { color: proc { |obj| obj.color == "Yellow" } }]
end
