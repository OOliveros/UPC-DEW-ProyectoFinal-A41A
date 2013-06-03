class User < ActiveRecord::Base
  attr_accessible :document, :email, :email_confirmation, :lastname, :name, :password, :password_confirmation, :secondlastname, :sex, :typedocument, :typeuser, :group_ids, :concert_ids
  has_many :user_group
  has_many :user_concert  
  has_many :groups, :through => :user_group
  has_many :concerts, :through => :user_concert
  validates  :typeuser, :presence =>{:message => "Seleccione un tipo de usuario"}
  validates  :name, :presence => {:message => "Nombre no puede estar en blanco"}
  validates  :lastname, :presence => {:message => "Apellido paterno no puede estar en blanco"}
  validates  :secondlastname, :presence => {:message => "Apellido materno no puede estar en blanco"}
  validates  :sex, :presence => {:message => "Seleccione el sexo"}
  validates  :typedocument, :presence => {:message => "Seleccione el tipo documento"}
  validates  :document, :presence => {:message => "Documento no puede estar en blanco"},:uniqueness => {:scope => :typedocument, :message => "Usuario ya existe"}
  validates  :email, :presence => {:message => "Correo no puede estar en blanco"},:confirmation => {:message => "Correo no coincide con la confirmacion"},:uniqueness => {:message => "Usuario ya existe"}
  validates  :password, :presence => {:message => "Contrasena no puede estar en blanco"},:confirmation => {:message => "Contrasena no coincide con la confirmacion"}
end
