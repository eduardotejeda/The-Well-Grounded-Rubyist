# Ejemplo con interpolacion de cadenas

ticket = Object.new

def ticket.date
"1903-01-02"
end
def ticket.venue
"Town Hall"
end
def ticket.event
"Author's reading"
end
def ticket.performer
"Mark Twain"
end
def ticket.seat
"Second Balcony, row J, seat 12"
end
def ticket.price
5.50
end

puts "Este ticket es para: #{ticket.event}, en #{ticket.venue}, el #{ticket.date}." + 
"El artista es #{ticket.performer}." +
"El asiento es #{ticket.seat}, y cuesta $#{'%.2f' % ticket.price}."