class Signspot::Base <ActiveRecord::Base
  self.abstract_class = true
  self.table_name_prefix = 'signspot_'
end
