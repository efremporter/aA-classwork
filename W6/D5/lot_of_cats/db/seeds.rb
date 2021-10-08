# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

all_cats = Cat.create([
  { name: 'Bella', 
    color: 'Black', 
    sex: 'F',
    birth_date: '2020/01/07' },

  { name: 'Charlie', 
    color: 'Cinnamon', 
    sex: 'M',
    birth_date: '2020/12/08' },

  { name: 'Lucy', 
    color: 'Blue', 
    sex: 'F', 
    birth_date: '2020/10/02'},
    
  { name: 'Leah', 
    color: 'Lavender', 
    sex: 'F',
    birth_date: '2020/05/01' }
])