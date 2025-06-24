# Cria um admin
User.create!(
  name: "Admin",
  email: "admin@example.com",
  password: "123456",
  password_confirmation: "123456",
  admin: true
)

# Cria um usuário comum
User.create!(
  name: "Usuário Comum",
  email: "user@example.com",
  password: "123456",
  password_confirmation: "123456",
  admin: false
)

# Cria alguns clubes
3.times do |i|
  Club.create!(
    name: "Clube #{i + 1}",
    description: "Descrição do clube #{i + 1}",
    user: User.first
  )
end
