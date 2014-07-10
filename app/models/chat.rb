class Chat 
  include Mongoid::Document
    field :name, type: String, default: ""
    field :completed, type: Boolean
  ## Confirmable

end