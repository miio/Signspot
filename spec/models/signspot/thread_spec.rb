#-*- encoding: utf-8 -*- 
require 'spec_helper'

describe Signspot::Thread do
  context "スレッドが建てられること" do
    before { @thread = FactoryGirl.build(:start_thread) }
    it { @thread.save.should be_true }
  end
  context "スレッドタイトルの長いスレッドを建てて文字が途切れないこと" do
    before { @thread = FactoryGirl.create(:long_title_thread) }
    it { @thread.title == FactoryGirl.attributes_for(:long_title_thread)[:title] }
  end
end
