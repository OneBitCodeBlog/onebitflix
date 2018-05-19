class DashboardService

  def initialize(type, user)
    @type = type
    @user = user
  end

  def perform
    send("group_by_#{@type}")
  end

  private

    def group_by_category
      categories = Category.includes(:movies, :series)
      Api::V1::CategorySerializer.new(categories)
    end

    def group_by_keep_watching
      players = Player.includes(:movie).where(end_date: nil, user: @user)
      Api::V1::MovieSerializer.new(players.map(&:movie))
    end
  
    def group_by_highlight
      highlight = Movie.find_by(highlighted: true)
      highlight ||= Serie.find_by(highlighted: true)
      Api::V1::WatchableSerializer.new(highlight, params: { user: @user })
    end
end