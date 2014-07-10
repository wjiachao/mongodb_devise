class Chat 
  include Mongoid::Document
    field :name, type: String, default: ""
    field :content, type: String, default: ""
  ## Confirmable

end