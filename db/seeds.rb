# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

range = (0..3)

publicQuests = []
range.each do |number|
  publicQuests << Quest.create(name: "Public Quest #{number}", description: "This is the public Quest number #{number}!")
end

hiddenQuests = []
range.each do |number|
  hiddenQuests << Quest.create(name: "Hidden Quest #{number}", description: "This is the hidden Quest number #{number}!", discovered: false)
end

publicNpcs = []
range.each do |number|
  publicNpcs << Npc.create(name: "Public Npc #{number}", description: "This is the public Npc number #{number}!")
end

hiddenNpcs = []
range.each do |number|
  hiddenNpcs << Npc.create(name: "Hidden Npc #{number}", description: "This is the hidden Npc number #{number}!", discovered: false)
end

publicQuests[0].npcs << publicNpcs[0]
publicQuests[1].npcs << publicNpcs[0..2]
publicQuests[2].npcs << publicNpcs[1..3]
publicQuests[3].npcs << publicNpcs[3] << hiddenNpcs[0..3]

hiddenQuests[0].npcs << publicNpcs[0]    << hiddenNpcs[0]
hiddenQuests[1].npcs << publicNpcs[0..2] << hiddenNpcs[0..2]
hiddenQuests[2].npcs << publicNpcs[1..3] << hiddenNpcs[1..3]
hiddenQuests[3].npcs << publicNpcs[2..3] << hiddenNpcs[2..3]
