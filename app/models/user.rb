class User < ActiveRecord::Base
  attr_accessible :dateregister, :document, :email, :lastname, :name, :password, :secondlastname, :sex, :typeuser, :typedocument
end
