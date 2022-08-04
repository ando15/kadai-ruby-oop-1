class Team
  
  attr_accessor :name,:win,:lose,:draw
  
  def initialize(team_name,team_win,team_lose,team_draw)
    self.name = (team_name)
    self.win = (team_win)
    self.lose = (team_lose)
    self.draw = (team_draw)
  end
  
  def calc_win_rate
    self.win.to_f/(self.win + self.lose)
  end
  
  def show_team_result
    puts "#{self.name}の2020年の成績は#{self.win}勝#{self.lose}敗#{self.draw}分け、勝率は#{self.calc_win_rate}"
  end
end

team_A = Team.new("Giants",67,45,8)
team_B = Team.new("Tigers",60,53,7)
team_C = Team.new("Dragons",60,55,5)
team_D = Team.new("BayStars",56,58,6)
team_E = Team.new("Carp",52,56,12)
team_F = Team.new("Swallows",41,69,10)

teams = [team_A,team_B,team_C,team_D,team_E,team_F]
teams.each do |team|
  team.show_team_result
end
