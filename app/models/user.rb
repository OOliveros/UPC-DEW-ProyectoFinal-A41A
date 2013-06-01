class User < ActiveRecord::Base
  attr_accessible :dateregister, :document, :email, :lastname, :name, :password, :secondlastname, :sex, :typedocument, :typeuser, :email_confirmation, :password_confirmation

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
