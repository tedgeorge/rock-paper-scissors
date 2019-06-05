class Game

  attr_reader :started

  def start
    @started = true
    @finished = false
  end

  def started?
    self.started || false
  end

  def finished?
    if @finished == true
      return true
    else
      return false
    end
  end

  def play(left = nil, right = nil)
    raise 'Game must first be started' unless started?
    return nil unless (left && right)
    if (left == :rock && right == :scissors || left == :scissors && right == :rock)
      @finished = true
      "Rock beats scissors!"
    elsif (left == :rock && right == :paper || left == :paper && right == :rock)
      @finished = true
      "Paper beats rock!"
    elsif (left == :paper && right == :scissors || left == :scissors && right == :paper)
      @finished = true
      "Scissors beats paper!"
    else
      "Tie game. Try again!"
    end
  end

end
