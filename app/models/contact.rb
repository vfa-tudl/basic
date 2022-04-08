class EmailContact
    include ActiveModel::Model
  
    attr_accessor :name, :email, :message
    validates :name, :email, :message, presence: true
  
    def deliver
      if valid?
        # deliver email
      end
    end
  end