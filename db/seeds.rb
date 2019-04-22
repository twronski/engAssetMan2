# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#==========================================================================================
# Create Types
#==========================================================================================

puts "Criando os Tipos de Equipamentos..."

tipos =     [  "Reles de Proteção",
               "Malas de Teste",
               "Modulos"
            ]

tipos.each do |tipo|
    EqptType.find_or_create_by(name: tipo)
end

puts "Tipos Cadastrados com Sucesso"

#==========================================================================================
# Create Models
#==========================================================================================

puts "Criando os Modelos de Equipamentos..."

modelos =     [ "F650",
                "SR3XX",
                "8 SERIES",
                "P44X",
                "P74X",
                "P40",
                "RA33X",
                "239",
                "269",
                "SR4XX",
                "SR7XX",
                "D20",
                "D25",
                "SWITCH",
                "BRICK",
                "SPM (MOTOR)",
                "MU320",
                "P14X",
                "RPV",
                "UR",
                "P64X",
                "C650"
              ]

modelos.each do |modelo|
    EqptModel.find_or_create_by(name: modelo)
end

puts "Modelos Cadastrados com Sucesso"

#==========================================================================================
# Create Functions
#==========================================================================================

puts "Criando os Funcoes de Equipamentos..."

functions =     [   
                    "Feeder",
                    "Transformer",
                    "Generator",
                    "Line",
                    "Busbar",
                    "Mesurement and Recording",
                    "Motor",
                    "Card",
                    "Gateway",
                    "Bay Controler",
                    "Comunication",
                    "Merging Unit",
                    "Processing unit"
               ]

functions.each do |function|
    EqptFunction.find_or_create_by(name: function)
end

puts "Funções Cadastradas com Sucesso"
