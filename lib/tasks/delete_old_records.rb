namespace :pets do
  desc "Eliminar mascotas de mas de 15 dias"
  task delete_15_days_old: :environment do
    Pets.where(['created_at < ?', 15.days.ago]).destroy_all
  end
end
