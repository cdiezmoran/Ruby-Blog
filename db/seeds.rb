# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create({ firstName: "Carlos", lastName: "Diez", username: "cdiezm", email: "carlos@example.com", password: "example" })
User.create({ firstName: "Tassos", lastName: "Lambrou", username: "t-ass.os", email: "tassos@example.com", password: "example" })

loremIpsumMessage = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce diam massa, volutpat non justo nec, vestibulum tincidunt massa. Nunc convallis augue euismod felis interdum tincidunt eget aliquet neque. Phasellus sit amet condimentum arcu, quis pretium felis. Nunc tempor, lorem eu efficitur gravida, ipsum tellus aliquet tortor, sit amet cursus felis lorem tincidunt tellus. Morbi viverra efficitur quam. Sed commodo mi et erat molestie dictum. Aliquam efficitur imperdiet blandit. Sed ipsum libero, fringilla sagittis convallis et, fringilla ut metus. Proin ultricies sagittis odio, et ultricies nibh fermentum malesuada. Aenean pharetra consequat tincidunt. In sit amet suscipit tortor, in sagittis nunc. Curabitur at mi quam. Integer eget ex eget est mattis tempus a ultrices lorem.\nPraesent at odio faucibus, volutpat elit at, pellentesque metus. Mauris a leo non quam euismod dignissim. Mauris et venenatis dui. Cras vitae lectus non neque ullamcorper placerat. Aliquam condimentum commodo mauris eget fringilla. Morbi eget finibus erat. Aliquam erat volutpat. Duis facilisis est nec enim vehicula, vel varius velit tincidunt. Vivamus quam massa, pharetra et accumsan sodales, viverra at leo. Phasellus sodales velit libero, in tempor nulla aliquet tincidunt."

Article.create({ title: "First article", content: loremIpsumMessage, user_id: 1 })
Article.create({ title: "Second article", content: loremIpsumMessage, user_id: 2 })
