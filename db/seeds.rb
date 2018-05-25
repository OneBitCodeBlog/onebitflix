## Customize de acordo com os videos e thumbnails de exemplo que você subir para o seu servidor

# Categories
ror = Category.create(name: 'Ruby On Rails')
talks = Category.create(name: 'Talks')
testes = Category.create(name: 'Testes')
outros = Category.create(name: 'Outros')

# Featured Movie
movie1 = Movie.create(title: "Ruby On Rails Api do zero ao Deploy", description: "Aprenda a criar uma API completa com Ruby On Rails...", thumbnail_key: "rails-api1.png", thumbnail_cover_key: "rails-api-cover.png", video_key: "rails-api1.mp4", highlighted: true, category: ror, featured_thumbnail_key: "rails-api-featured.png")

# Users
user1 = User.create(name: 'example', email: 'example@example.com', password: '123456', password_confirmation: '123456')
user2 = User.create(name: 'example2', email: 'example2@example.com', password: '123456', password_confirmation: '123456')
user3 = User.create(name: 'example3', email: 'example3@example.com', password: '123456', password_confirmation: '123456')
user4 = User.create(name: 'example4', email: 'example4@example.com', password: '123456', password_confirmation: '123456')
user5 = User.create(name: 'example5', email: 'example5@example.com', password: '123456', password_confirmation: '123456')

# Movies sem série
movie2 = Movie.create(title: "Crie generators no Ruby On Rails", description: "Generators são uma maneira de você automatizar a criação de conjuntos de arquivos no seu APP (assim como o rails new, o rails generate controller, o rails generate scaffold e etc), e nesse Screencast nós vamos aprender como cria-los..", thumbnail_key: "generators.png", thumbnail_cover_key: "generators-cover.png", video_key: "generators.mp4", category: ror)
movie3 = Movie.create(title: "Dominando o uso de Jobs no RoR - Parte 1", description: "s Jobs são uma maneira fácil de você rodar processos demorados em background (evitando lentidão na hora de responder as requisições do usuário e tornando seu sistema mais fluido).", thumbnail_key: "jobs1.png", thumbnail_cover_key: "jobs1-cover.png", video_key: "jobs1.mp4", category: ror)
movie4 = Movie.create(title: "Dominando o uso de Jobs no RoR - Parte 2", description: "s Jobs são uma maneira fácil de você rodar processos demorados em background (evitando lentidão na hora de responder as requisições do usuário e tornando seu sistema mais fluido).", thumbnail_key: "jobs2.png", thumbnail_cover_key: "jobs2-cover.png", video_key: "jobs2.mp4", category: ror)
movie5 = Movie.create(title: "Instalando pacotes no Rails com Yarn", description: "O Yarn é um gerenciador de pacotes javascript rápido, seguro e confiável que foi integrado no rails >= 5.1 para facilitar ainda mais a gestão das dependências. (agora você usa o Bundler para bibliotecas ruby e o Yarn para bibliotecas javascript, simples assim)", thumbnail_key: "materialize.png", thumbnail_cover_key: "materialize-cover.png", video_key: "materialize.mp4", category: ror)

movie5 = Movie.create(title: "Como monitorar seu APP em produção", description: "Hoje vamos falar de um tema muito interessante quando precisamos lidar com a verificação da saúde do nosso ambiente de produção: a instrumentação.", thumbnail_key: "obt18.png", thumbnail_cover_key: "obt18-cover.png", video_key: "obt18.mp4", category: outros)
movie6 = Movie.create(title: "Desmistificando a Criação de APIs", description: "Desmistificando a Criação de APIs Desmistificando a Criação de APIs Desmistificando a Criação de APIs Desmistificando a Criação de APIs", thumbnail_key: "obt17.png", thumbnail_cover_key: "obt17-cover.png", video_key: "obt17.mp4", category: outros)
movie7 = Movie.create(title: "Dominando o Visual Studio Code - Parte 1", description: "O Visual Studio Code é um editor de texto Open Source completo que possui integração nativa com o Git, milhares de extensões, é rápido e permite que você realize o debug facilmente do seu código.", thumbnail_key: "vscode1.png", thumbnail_cover_key: "vscode1-cover.png", video_key: "vscode1.mp4", category: outros)
movie8 = Movie.create(title: "Dominando o Visual Studio Code - Parte 1", description: "O Visual Studio Code é um editor de texto Open Source completo que possui integração nativa com o Git, milhares de extensões, é rápido e permite que você realize o debug facilmente do seu código.", thumbnail_key: "vscode2.png", thumbnail_cover_key: "vscode2-cover.png", video_key: "vscode2.mp4", category: outros)
movie9 = Movie.create(title: "Dominando o Visual Studio Code - Parte 1", description: "O Visual Studio Code é um editor de texto Open Source completo que possui integração nativa com o Git, milhares de extensões, é rápido e permite que você realize o debug facilmente do seu código.", thumbnail_key: "vscode3.png", thumbnail_cover_key: "vscode3-cover.png", video_key: "vscode3.mp4", category: outros)


# Series
vscode = Serie.create(title: 'Visual Studio Code', description: 'Uma série completa para você dominar um dos mais importantes editores de texto', thumbnail_key: "vscode1.png", thumbnail_cover_key: "vscode-serie-cover.png", category: outros)
movie10 = Movie.create(title: "Dominando o Visual Studio Code - Parte 1", description: "O Visual Studio Code é um editor de texto Open Source completo que possui integração nativa com o Git, milhares de extensões, é rápido e permite que você realize o debug facilmente do seu código.", thumbnail_key: "vscode1.png", thumbnail_cover_key: "vscode1-cover.png", video_key: "vscode1.mp4", serie: vscode, episode_number: 1)
movie11 = Movie.create(title: "Dominando o Visual Studio Code - Parte 2", description: "O Visual Studio Code é um editor de texto Open Source completo que possui integração nativa com o Git, milhares de extensões, é rápido e permite que você realize o debug facilmente do seu código.", thumbnail_key: "vscode2.png", thumbnail_cover_key: "vscode2-cover.png", video_key: "vscode2.mp4", serie: vscode, episode_number: 2)
movie12 = Movie.create(title: "Dominando o Visual Studio Code - Parte 3", description: "O Visual Studio Code é um editor de texto Open Source completo que possui integração nativa com o Git, milhares de extensões, é rápido e permite que você realize o debug facilmente do seu código.", thumbnail_key: "vscode3.png", thumbnail_cover_key: "vscode3-cover.png", video_key: "vscode3.mp4", serie: vscode, episode_number: 3)

# Keep Wathching
Player.create(start_date: Time.now, user: user1, elapsed_time: 10, movie: movie1)
Player.create(start_date: Time.now, user: user1, elapsed_time: 20, movie: movie2)
Player.create(start_date: Time.now, user: user1, elapsed_time: 30, movie: movie3)
Player.create(start_date: Time.now, user: user1, elapsed_time: 40, movie: movie4)
Player.create(start_date: Time.now, user: user1, elapsed_time: 50, movie: movie5)

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