require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe '新規コメント' do

    it "全て入力されていれば投稿できる" do
      expect(@comment).to be_valid
    end

    it "textが空だと登録できない" do
      @comment.text = ""
      @comment.valid?
      expect(@comment.errors.full_messages).to include "Text can't be blank"
    end
  end
end