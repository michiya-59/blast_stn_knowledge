# frozen_string_literal: true

class LearnsController < ApplicationController
  before_action :get_learn_category, only: %i(index learn_list)
  def index; end

  def learn_list
    if params && params["type"] == "新規MT"
      @learns = Learn.where(learn_category_id: 1).includes(document_file_attachment: :blob, video_file_attachment: :blob).order(:order_num)
      @learn_category_custom = LearnCategory.find(1)
    elsif params && params["type"] == "株式取引の学び"
      @learns = Learn.where(learn_category_id: 2).includes(document_file_attachment: :blob, video_file_attachment: :blob).order(:order_num)
      @learn_category_custom = LearnCategory.find(2)
    elsif params && params["type"] == "保険の学び"
      @learns = Learn.where(learn_category_id: 3).includes(document_file_attachment: :blob, video_file_attachment: :blob).order(:order_num)
      @learn_category_custom = LearnCategory.find(3)
    elsif params && params["type"] == "不動産の学び"
      @learns = Learn.where(learn_category_id: 4).includes(document_file_attachment: :blob, video_file_attachment: :blob).order(:order_num)
      @learn_category_custom = LearnCategory.find(4)
    elsif params && params["type"] == "信用取引の学び"
      @learns = Learn.where(learn_category_id: 5).includes(document_file_attachment: :blob, video_file_attachment: :blob).order(:order_num)
      @learn_category_custom = LearnCategory.find(5)
    elsif params && params["type"] == "為替取引"
      @learns = Learn.where(learn_category_id: 6).includes(document_file_attachment: :blob, video_file_attachment: :blob).order(:order_num)
      @learn_category_custom = LearnCategory.find(6)
    else
      @learns = Learn.where(learn_category_id: params[:id]).includes(document_file_attachment: :blob, video_file_attachment: :blob).order(:order_num)
      @learn_category_custom = LearnCategory.find(params[:id])
    end
    @learn_infos = Kaminari.paginate_array(@learns).page(params[:page]).per(12)
  end

  private

  def get_learn_category
    @learn_category = LearnCategory.where.not(id: [1, 2, 3, 4, 5, 6, params[:id]]).order(:order_num)
  end
end
