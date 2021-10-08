class User < ApplicationRecord
has_many :reservations, dependent: :destroy
  
# enum role: [:Busowner, :Admin, :Customer]




# validates :role, presence:true
has_secure_password
  validates :email, presence: true,
                  format: { with: /\S+@\S+/ },
                  uniqueness: { case_sensitive: false }

ROLE_OPTIONS = [
  'Busowner',
  
  'Customer'
]
     validates :role,
                inclusion: {in: ROLE_OPTIONS}             
       
                
                # def admin?
                #   self.role == 'Admin'
                  
                # end
                # def busowner?
                #   self.role == 'Busowner'
                  
                # end
              


                
 end
