class Goal < ActiveRecord::Base
  
  validates_presence_of :name,
    :message => "must not be empty"
  
  
  #validates_inclusion_of :category_id, 
   # :in => Category.all,
    #:message => "%{value} is not allowed"
  
end
