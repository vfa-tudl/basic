class Person
  include ActiveModel::Serializers::JSON
  extend ActiveModel::Naming
  attr_accessor :name, :email, :token
  validates :name, presence: true
  validates_format_of :email, with: /\A([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})\z/i
  validates! :token, presence: true
  def attributes=(hash)
    hash.each do |key, value|
      send("#{key}=", value)
    end
  end

  def attributes
    {'name' => nil}
  end
end


Person.model_name.name                
Person.model_name.singular            
Person.model_name.plural              
Person.model_name.element             
Person.model_name.human              
Person.model_name.collection        
Person.model_name.param_key          
Person.model_name.i18n_key           
Person.model_name.route_key         
Person.model_name.singular_route_key