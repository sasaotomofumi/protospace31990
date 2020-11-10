class RenameConeptCulumnPrototpyes < ActiveRecord::Migration[6.0]
  def change
    rename_column :prototypes, :conept, :concept
  end
end
