require 'sinatra'

get '/trebek' do
  [
    "Barack Obama was elected to the presidency in this year",
    "Many countries have laws requiring that milk undergo this process that guards against pathogens",
    "This Picasso masterpiece went on tour in 1938 & 1939 to raise money for Spanish relief",
    "One pylon of this country's Millau Viaduct, the world's tallest road bridge, is higher than the Chrysler Building",
    "Friendly greeting spelled out on your cell's 4 button",
    "This Middle Eastern country got tomatoes, pita bread &, as a stand-in for a tree, a sprig of parsley",
    "Hirudinea medicinalis is a species of this bloodsucking worm used in medicine",
    "Low necklines & high waists were features of the Empire Style popularized c. 1805 by this French empress"
  ].sample
end