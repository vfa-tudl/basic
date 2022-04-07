class GodValidator < ActiveModel::Validator
    def validate(record)
      unless record.title.include? "God"
        record.errors[:base] << "This Article is not believe God"
      end
    end
end

class Article < ApplicationRecord
    has_many :comments
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
    validates_with GodValidator
end
