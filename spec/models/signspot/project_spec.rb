#-*- encoding: utf-8 -*- 
require 'spec_helper'

describe Signspot::Project do
   context "プロジェクトが建てられること" do
    before { @project = FactoryGirl.build(:signspot_project) }
    it { @project.save.should be_true }
   end
   context "プロジェクトのタイトルは必須" do
    before { @project = FactoryGirl.build(:signspot_empty_title_project) }
    it { @project.save.should be_false }
   end
   context "プロジェクトのslugは必須" do
    before { @project = FactoryGirl.build(:signspot_empty_slug_project) }
    it { @project.save.should be_false }
   end
   context "プロジェクトのslugにマルチバイト文字は使ってはいけない" do
    before { @project = FactoryGirl.build(:signspot_multibyte_slug_project) }
    it { @project.save.should be_false }
   end
   context "プロジェクトのslugに記号は使ってはいけない" do
    before { @project = FactoryGirl.build(:signspot_sign_slug_project) }
    it { @project.save.should be_false }
   end
#   context "プロジェクトのslugはユニークであること" do
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
end
