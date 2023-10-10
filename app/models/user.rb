class User < ApplicationRecord

    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates_cpf_format_of :cpf

end
