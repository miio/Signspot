#-*- encoding: utf-8 -*- 
require 'spec_helper'

describe Signspot::Thread do
  context "スレッドが建てられること" do
    before { @thread = FactoryGirl.build(:start_thread) }
    it { @thread.save.should be_true }
  end
end
