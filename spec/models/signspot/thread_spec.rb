#-*- encoding: utf-8 -*- 
require 'spec_helper'
# describe Signspot::Project do
#   context "プロジェクトが建てられること" do
# 
#   end
#   context "プロジェクトのslugは英数字のみであること" do
# 
#   end
#   context "プロジェクトの管理人が最低1人いること" do
# 
#   end
#   context "プロジェクトと紐づいたスレッドを建てられること" do
# 
#   end
#   context "プロジェクト作成時のステートはデフォルトステートマスタと同一であること" do
# 
#   end
#   context "プロジェクト間のスレッドチェーンの縦断移動ができること" do
# 
#   end
#   context "非公開プロジェクトを作れる" do
# 
#   end
#   context "非公開プロジェクトのメンバーであることを確認する" do
# 
#   end
#   context "非公開プロジェクトのメンバーでないことを確認する" do
# 
#   end
# end
describe Signspot::Thread do
  context "スレッドが建てられること" do
    before { @thread = FactoryGirl.build(:start_thread) }
    it { @thread.save.should be_true }
  end
  context "スレッドタイトルの長いスレッドを建てて文字が途切れないこと" do
    before { @thread = FactoryGirl.create(:long_title_thread) }
    it { @thread.title == FactoryGirl.attributes_for(:long_title_thread)[:title] }
  end
#   context "スレッドの中の最新のスレッドチェーンを取得できる" do
# 
#   end
end
