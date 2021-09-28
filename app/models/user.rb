class User < ApplicationRecord
has_many :reservations, dependent: :destroy
  

has_secure_password
  validates :email, presence: true,
                  format: { with: /\S+@\S+/ },
                  uniqueness: { case_sensitive: false }


                  
                
                  

                end
