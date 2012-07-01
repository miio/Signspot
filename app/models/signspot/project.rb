#-*- encoding: utf-8 -*- 
class Signspot::Project < Signspot::Base
  include ActiveModel::Validations
  validates_presence_of :title # タイトルが空でないことを検証する
  validates_presence_of :slug # slugが空でないことを検証する
end
