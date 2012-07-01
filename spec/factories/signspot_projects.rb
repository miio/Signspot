#-*- encoding: utf-8 -*- 
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :signspot_project, :class => 'Signspot::Project' do |p|
    p.title "初めてのプロジェクト"
    p.slug "first_project"
  end
end
