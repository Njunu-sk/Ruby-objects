def mask_credit_card(card_number)
  credit_card_number = String(card_number).scan(/\d/).join
  last_four_digits = credit_card_number.slice!(-4..-1)
  credit_card_number.tr('0-9', '#') << last_four_digits
end

# testing against various legths & formats
mask = [
  '1234567890123456',
  '1234-5678-9012-3456',
  1_234_567_890_123_456,
  '1234-567890-12345'
].map { |card_number| mask_credit_card card_number }

p mask
