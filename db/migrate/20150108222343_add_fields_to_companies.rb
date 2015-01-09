class AddFieldsToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :logo, :string
    add_column :companies, :mainurl, :string
    add_column :companies, :user, :string
    add_column :companies, :password, :string
    add_column :companies, :banner_dashboard, :string
    add_column :companies, :banner_cms, :string
    add_column :companies, :banner_solicitudes, :string
    add_column :companies, :active, :boolean
    add_column :companies, :sv_cesantias, :string
    add_column :companies, :sv_coworkers, :string
    add_column :companies, :sv_encabezado, :string
    add_column :companies, :sv_organigrama, :string
    add_column :companies, :sv_endeudamiento, :string
  end
end
