# frozen_string_literal: true

class Gallery < ApplicationRecord
  has_many_attached :images
end
