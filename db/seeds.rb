# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

streamers = Streamer.create([
    {
        name: "Netflix",
        image_url: "https://www.nxtbookmedia.com/wp-content/uploads/2014/06/netflix-logos.png"
    },
    {
        name: "Disney+",
        image_url: "https://cnbl-cdn.bamgrid.com/assets/7ecc8bcb60ad77193058d63e321bd21cbac2fc67281dbd9927676ea4a4c83594/original"
    },
    {
        name: "HBO",
        image_url: "https://www.hbo.com/img/hbo-logo-blk.svg"
    },
    {
        name: "Peacock",
        image_url: "https://www.peacocktv.com/"
    },
    {
        name: "Amazon Prime Video",
        image_url: "https://cdn.mos.cms.futurecdn.net/bmqMQfTNd47HBLPcEREicG-970-80.jpg.webp"
    },
    {
        name: "Funimation",
        image_url: "https://static.funimation.com/static/img/common/funimation-logo.svg"
    },
    {
        name: "Hulu",
        image_url: "https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_170,w_170,f_auto,b_white,q_auto:eco,dpr_1/bk8cux6dapq8qjzylfaj"
    },
    {
        name: "Crunchyroll",
        image_url: "https://store-images.s-microsoft.com/image/apps.44134.9007199266244356.8c8f8b98-231f-43f4-b251-7e5c4931b8a2.0a5801df-68bf-4fb5-888b-40f49a061c80"
    },
    {
        name: "Funimation",
        image_url: "https://static.funimation.com/static/img/common/funimation-logo.svg"
    },
    {
        name: "Paramount+",
        image_url: "https://img.dtcn.com/image/themanual/paramount-plus-logo-tm-917x561.jpg"
    },
    {
        name: "Apple TV+",
        image_url: "https://www.psu.com/wp/wp-content/uploads/2019/10/apple-tv-plus-ps4-768x512.jpg"
    }
])

reviews = Review.create([
    {
        title: 'Netflix is a scam',
        description: 'At first, I thought they new what they were doing, but now they have removed all the 
        good shows. I was paying for a huge database of good movies, not cheap movies!',
        score: 1,
        streamer: streamers.first
    },
    {
        title: 'Streaming is the new wheel',
        description: 'I challenge you to find a more entertaining and enjoyable 21st century invention. I love Netflix, best app.',
        score: 5,
        streamer: streamers.first
    }
])