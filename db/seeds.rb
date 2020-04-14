# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Gender.create(code: 'MA', name: 'Male')
Gender.create(code: 'FE', name: 'Female')
Gender.create(code: 'NB', name: 'Non binary')
Gender.create(code: 'HO', name: 'Homosexual')
Gender.create(code: 'BI', name: 'Bisexual')
Gender.create(code: 'DE', name: 'Demisexual')
Gender.create(code: 'PA', name: 'Pansexual')
Gender.create(code: 'AU', name: 'Autosexual')
Gender.create(code: 'AS', name: 'Asexual')
Gender.create(code: 'PO', name: 'Polisexual')
Gender.create(code: 'AN', name: 'Antrosexual')
Gender.create(code: 'TR', name: 'Transexual')

IdentificationType.create(code: 'CC', name: 'Cédula de ciudadanía')
IdentificationType.create(code: 'RC', name: 'Registro Civil')
IdentificationType.create(code: 'TI', name: 'Tarjeta de identidad')
IdentificationType.create(code: 'CE', name: 'Cédula de extranjería')
IdentificationType.create(code: 'PA', name: 'Pasaporte')
IdentificationType.create(code: 'MS', name: 'Menor sin identificación')
IdentificationType.create(code: 'AS', name: 'Adulto sin identidad')

Country.create(id: '169', name: 'COLOMBIA')
Country.create(id: '149', name: 'CANADA')
Country.create(id: '199', name: 'CHILE')
Country.create(id: '245', name: 'ESPAÑA')


Department.create(id: '05', name: 'ANTIOQUIA', country_id: '169')
Department.create(id: '15', name: 'BOYACA', country_id: '169')
Department.create(id: '52', name: 'NARIÑO', country_id: '169')
Department.create(id: '73', name: 'TOLIMA', country_id: '169')

City.create(id: '001', name: 'IBAGUÉ', department_id: '73')
City.create(id: '026', name: 'ALVARADO', department_id: '73')
City.create(id: '443', name: 'MARIQUITA', department_id: '73')
City.create(id: '861', name: 'VENADILLO', department_id: '73')

