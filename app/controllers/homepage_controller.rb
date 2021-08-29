# frozen_string_literal: true

class HomepageController < ApplicationController
  def index
    @gallery = Gallery.first
  end
end
