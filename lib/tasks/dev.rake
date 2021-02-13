namespace :dev do
  desc "Setup Development"
  task setup: :environment do

    puts "Executando o setup para Desenvolvimento..."

    puts "APAGANDO BD... #{%x(rails db:drop)}"

    puts "CRIANDO BD... #{%x(rails db:create)}"

    puts %x(rake db:migrate)
    puts %x(rake db:seed)
    puts %x(rails dev:generate_users)

    puts "Setup completado com sucesso!"
  end

  ############################################################

  desc "Criando usuários FAKES"
  task generate_users: :environment  do
    puts "Cadastrando USUÁRIOS..."

    10.times do
      User.create!(
        name: Faker::Name.name,
        mat: Faker::Number.number(digits: 6),
        role: [1,2,3].sample,
        password: "123456",
        password_confirmation: "123456"
      )
    end

    puts "USUÁRIOS cadastrados com sucesso!"
  end

end
