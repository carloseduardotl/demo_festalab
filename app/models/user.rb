class User < ApplicationRecord

    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates_cpf_format_of :cpf
    validates :phone, format: { with: /\A\([1-9]{2}\) (?:[2-8]|9[0-9])[0-9]{3}\-[0-9]{4}\z/, message: "Phone should be (xx) xxxxx-xxxx" }

end
