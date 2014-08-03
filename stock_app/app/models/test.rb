class Test
  include Mongoid::Document
  field :name, type: String
  field :memo, type: String
  field :memo2, type: String
end
