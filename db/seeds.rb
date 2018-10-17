# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Venue.create!( name: 'House of Blues', address: '15 Lansdown Street', description: 'house o blues yo', capacity: 200, url: 'http://www.houseofblues.com/' )
Venue.create!( name: 'Hatch Shell', address: '47 David G Mugar Way', description: 'The HALF shell', capacity: 500, url: 'http://www.hatchshell.com/' )
Venue.create!( name: 'Paradise Rock Club', address: '967 Commonwealth Avenue', description: 'The Paradise Rock Club is a 933-capacity music venue located in Boston, Massachusetts. Because of its relatively small size, it appeals to top local alternative rock performers as well as American and British bands visiting Boston for the first time.', capacity: 933, url: 'http://events.crossroadspresents.com/venues/paradise-rock-club', image: 'http://press.emerson.edu/wers/files/2016/03/DSC_0073.jpg' )
Venue.create!( name: 'Brighton Music Hall', address: '158 Brighton Ave', description: 'Compact, standing-room-only venue featuring performances by alternative, indie & local bands.', capacity: 1000, url: 'http://events.crossroadspresents.com/venues/brighton-music-hall', image: 'http://press.emerson.edu/wers/files/2016/03/DSC_0073.jpg', image: 'http://www.bostonherald.com/sites/default/files/styles/gallery/public/media/2012/01/14/fbd465_011212musicsc007.jpg?itok=-QExcFsS' )




Venue.create!( name: 'Great Scott', address: '1222 Commonwealth Avenue', description: 'Low-key destination for indie-underground live-music shows & long-running dance nights.', capacity: 200, url: 'http://www.greatscottboston.com/', image: 'https://66.media.tumblr.com/6ad54cacccdc87e13ab75b955edd848a/tumblr_inline_mznyws5QRK1qzntq3.jpg' )
Venue.create!( name: 'The Plough & Stars', address: '912 Massachusetts Ave', description: 'Compact pub offering beers on tap, an eclectic comfort-fare menu, brunch & live music nights.', capacity: 300, url: 'https://www.ploughandstars.com/', image: 'https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2013/9/16/1379345225072/Plough-and-Stars-Boston--001.jpg?width=620&quality=85&auto=format&fit=max&s=d657ced10415de07e8dba66bbfe258fd' )
Venue.create!( name: 'The Sinclair', address: '52 Church Street', description: 'This gastropub & music venue features New American fare and live acts, with an open kitchen & patio.', capacity: 400, url: 'http://www.sinclaircambridge.com/', image: 'https://66.media.tumblr.com/483152e29941dbafe1bd9e4a93fb65e1/tumblr_inline_n4f3msUDEG1qzntq3.jpg' )
Venue.create!( name: 'The Lizard Lounge', address: '1667 Massachusetts Ave', description: 'Cambridge Commons dim basement club for local musicians, open mike & popular poetry slams.', capacity: 320, url: 'http://lizardloungeclub.com/', image: 'http://lizardloungeclub.com/wp-content/uploads/the-lizard-lounge-91.jpeg' )
Venue.create!( name: 'The Middle East', address: '472 Massachusetts Ave', description: 'Smaller than its downstairs sibling, this enduring rock venue features underground & indie bands.', capacity: 380, url: 'http://www.mideastoffers.com/', image: 'https://c.o0bg.com/rf/image_835w/Boston/2011-2020/2018/08/29/BostonGlobe.com/Metro/Images/10232008_23sidefeat12-6962391.jpg' )
