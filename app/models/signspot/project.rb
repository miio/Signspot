#-*- encoding: utf-8 -*- 
class Signspot::Project < Signspot::Base
  validates :title, :presence => true # タイトルが空でないことを検証する
  validates :slug,
    :presence => true, # slugが空でないことを検証する
    :format =>{:with => /\A\w[\w\.+\-_ ]+$/, :on => :create} # slugが英数字orアンダーバーorハイフンであることを検証する
end
