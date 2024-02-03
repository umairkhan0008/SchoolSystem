class User < ApplicationRecord

    has_many :classrooms

    has_secure_password

    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
    
ROLES = %w{admin}


def admin? 
    role == "admin"
end
end
