## Customize de acordo com os videos e thumbnails de exemplo que você subir para o seu servidor

# Categories
ror = Category.create(name: 'Ruby On Rails')
talks = Category.create(name: 'Talks')
testes = Category.create(name: 'Testes')
outros = Category.create(name: 'Outros')

# Featured Movie
movie1 = Movie.create(title: "Ruby On Rails Api do zero ao Deploy", description: "Aprenda a criar uma API completa com Ruby On Rails...", thumbnail_key: "rails-api1.png", thumbnail_cover_key: "rails-api-cover.png", video_key: "BSFS_inscricoes_abertas.mp4", highlighted: true, category: ror, featured_thumbnail_key: "rails-api-featured.png")

# Users
user1 = User.create(name: 'example', email: 'example@example.com', password: '123456', password_confirmation: '123456')
user2 = User.create(name: 'example2', email: 'example2@example.com', password: '123456', password_confirmation: '123456')
user3 = User.create(name: 'example3', email: 'example3@example.com', password: '123456', password_confirmation: '123456')
user4 = User.create(name: 'example4', email: 'example4@example.com', password: '123456', password_confirmation: '123456')
user5 = User.create(name: 'example5', email: 'example5@example.com', password: '123456', password_confirmation: '123456')

# Movies sem série
movie2 = Movie.create(title: "Dominando o Docker", description: "O Docker é um plataforma (aberta) que permite que você crie, rode e faça deploy de containers. De maneira simples, um container é o empacotamento dasua aplicação mais as dependências dela.", thumbnail_key: "docker.png", thumbnail_cover_key: "docker-cover.png", video_key: "docker.mp4", category: outros)
movie3 = Movie.create(title: "Dominando Atom [+12 pacotes Incríveis!", description: "O Atom é um editor bastante completo, cheio de temas e pacotes para facilitar a sua vida como programador.", thumbnail_key: "atom.png", thumbnail_cover_key: "atom-cover.png", video_key: "atom.mp4", category: outros)
movie4 = Movie.create(title: "Criando um e-commerce com Spree em 15 minutos!", description: "O Spree é umaplataforma de e-commerce criada usando Ruby On Rails e vem evoluindo constantemente. Ela possui diversas extensões que ajudam na customização do e-commerce gerado e possui uma grande versatilidade na hora das customizações.", thumbnail_key: "spree.png", thumbnail_cover_key: "spree-cover.png", video_key: "spree.mp4", category: outros)

# Series
vscode = Serie.create(title: 'Visual Studio Code', description: 'Uma série completa para você dominar um dos mais importantes editores de texto', thumbnail_key: "vscode1.png", thumbnail_cover_key: "vscode-serie-cover.png", last_watched_episode_id: 1, category: outros)
movie5 = Movie.create(title: "Dominando o Visual Studio Code - Parte 1", description: "O Visual Studio Code é um editor de texto Open Source completo que possui integração nativa com o Git, milhares de extensões, é rápido e permite que você realize o debug facilmente do seu código.", thumbnail_key: "vscode1.png", thumbnail_cover_key: "vscode1-cover.png", video_key: "vscode1.mp4", serie: vscode, episode_number: 1)
movie6 = Movie.create(title: "Dominando o Visual Studio Code - Parte 2", description: "O Visual Studio Code é um editor de texto Open Source completo que possui integração nativa com o Git, milhares de extensões, é rápido e permite que você realize o debug facilmente do seu código.", thumbnail_key: "vscode2.png", thumbnail_cover_key: "vscode2-cover.png", video_key: "vscode2.mp4", serie: vscode, episode_number: 2)
movie7 = Movie.create(title: "Dominando o Visual Studio Code - Parte 3", description: "O Visual Studio Code é um editor de texto Open Source completo que possui integração nativa com o Git, milhares de extensões, é rápido e permite que você realize o debug facilmente do seu código.", thumbnail_key: "vscode3.png", thumbnail_cover_key: "vscode3-cover.png", video_key: "vscode3.mp4", serie: vscode, episode_number: 3)

# Keep Wathching
Player.create(start_date: Time.now, user: user1, elapsed_time: '14', movie: movie1)
Player.create(start_date: Time.now, user: user1, elapsed_time: '14', movie: movie2)
Player.create(start_date: Time.now, user: user1, elapsed_time: '14', movie: movie3)
Player.create(start_date: Time.now, user: user1, elapsed_time: '14', movie: movie4)
Player.create(start_date: Time.now, user: user1, elapsed_time: '14', movie: movie5)

# Reviews
Review.create(rating: 3, description: 'I have always depended on the kindness of strangers.', reviewable: movie2, user: user1)
Review.create(rating: 2, description: 'Help me, Obi-Wan Kenobi. Youre my only hope.         ', reviewable:movie2, user: user2)
Review.create(rating: 5, description: 'Every time a bell rings, an angel gets his wings.    ', reviewable:movie2, user: user3)
Review.create(rating: 3, description: 'Magic Mirror on the wall, who is the fairest one of all?', reviewable: movie2, user: user4)
Review.create(rating: 5, description: 'Just when I thought I was out, they pull me back in.', reviewable: movie2, user: user5)


# Favorites
Favorite.create(favoritable: Movie.all[0], user: user1)
Favorite.create(favoritable: Movie.all[1], user: user1)
Favorite.create(favoritable: Movie.all[2], user: user1)
Favorite.create(favoritable: Movie.all[3], user: user1)
Favorite.create(favoritable: Movie.all[4], user: user1)