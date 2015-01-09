class Company < ActiveRecord::Base
  attr_accessible :name, :logo, :mainurl, :user, :password, :banner_dashboard, :banner_cms, :banner_solicitudes, :active, :sv_cesantias, :sv_coworkers, :sv_encabezado, :sv_organigrama, :sv_endeudamiento
end
