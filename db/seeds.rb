#---
# Excerpted from "Agile Web Development with Rails 6",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rails6 for more book information.
#---
# encoding: utf-8
Product.delete_all
Product.create!(title: 'Vacio Argentiono',
  description:
    %{<p>
      <em>Vacio argentino de 300gr acompañada de frijoles fritos, ensalada verde
      y una cebollita asada, con sus tortillas hechas a mano.
      </p>},
  image_url: 'ordenDeVacio.jpg',
  price: 30.00)
# . . .
Product.create!(title: 'Taco de Adobada',
  description:
    %{<p>
      <em>Taco de carne adobada de cerdo con 70 gr de carne y tortilla hecha a mano.
      </p>},
  image_url: 'tacoDeAdobada.jpg',
  price: 20.00)
# . . .

Product.create!(title: 'Orden de Sirlon',
  description:
    %{<p>
      <em>Orden de Sirlon de 300gr acompañada de frijoles fritos, ensalada verde
      y una cebollita asada, con sus tortillas hechas a mano.
      </p>},
  image_url: 'ordenDeSirlon.jpg',
  price: 130.00)
