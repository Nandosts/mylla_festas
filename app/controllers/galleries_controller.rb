# frozen_string_literal: true

class GalleriesController < ApplicationController
  def image
    @gallery = Gallery.first
  end

  def add_images
    @gallery = Gallery.find(params[:id])
    params[:images].each do |image|
      @gallery.images.attach(image)
    end
    redirect_to manage_images_path
  rescue StandardError => e
    flash[:error] = 'Erro ao enviar foto'
    redirect_to root_path
  end

  def delete_images
    @gallery = Gallery.first
    @img = ActiveStorage::Attachment.find(params[:image_id])
    begin
      @img&.purge
      redirect_to manage_images_path
    rescue StandardError => e
      flash[:error] = 'Erro ao remover foto!'
      redirect_to root_path
    end
  end

  def delete_all_images
    @gallery = Gallery.find(params[:id])
    @gallery.images.each(&:purge)
    redirect_to manage_images_path
  rescue StandardError => e
    flash[:error] = 'Erro ao deletar foto'
    redirect_to root_path
  end

  private

  def gallery_params
    params.require(:gallery).permit(
      :id,
      :name,
      :images
    )
  end
end
