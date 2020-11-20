require 'rails_helper'

RSpec.describe Tweet, type: :model do
  before do
    @tweet = FactoryBot.build(:tweet)
  end

  describe '新規投稿' do

    it "全て入力されていれば投稿できる" do
      expect(@tweet).to be_valid
    end

    it "titleが空だと登録できない" do
      @tweet.title = ""
      @tweet.valid?
      expect(@tweet.errors.full_messages).to include "Title can't be blank"
    end
    it "catch_copyが空だと登録できない" do
      @tweet.catch_copy = ""
      @tweet.valid?
      expect(@tweet.errors.full_messages).to include "Catch copy can't be blank"
    end
    it "conceptが空だと登録できない" do
      @tweet.concept = ""
      @tweet.valid?
      expect(@tweet.errors.full_messages).to include "Concept can't be blank"
    end
    it "imageが空だと登録できない" do
      @tweet.image = nil
      @tweet.valid?
      expect(@tweet.errors.full_messages).to include "Image can't be blank"
    end
  end
end