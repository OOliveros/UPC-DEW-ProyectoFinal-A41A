class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :document, :email, :email_confirmation, :lastname, :name, :password, :password_confirmation, :secondlastname, :sex, :typedocument, :typeuser, :group_ids, :concert_ids, :username, :rol
  has_many :user_groups
  has_many :user_concerts  
  has_many :groups, :through => :user_groups
  has_many :concerts, :through => :user_concerts, :conditions => ['dateconcert >= ?', DateTime.now]
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
