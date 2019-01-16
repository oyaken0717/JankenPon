class Player
  def hand
    puts "0~2の数字を入力してください。"
    puts "0:グー"
    puts "1:チョキ"
    puts "2:パー"
    pc = gets.to_i
  end
end

class Enemy
  def hand
    rand(0..2)
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    if  player_hand <= 2
      hands = []
      hands = ["グ-","チョキ","パ-"]
      pc = hands[enemy_hand]
    else
        player = Player.new
        player.hand
    end
    judge = (player_hand - enemy_hand + 3)%3
    if judge == 2
      puts ("相手の手は#{pc}です。あなたの勝ちです。")
    elsif judge == 1
      puts ("相手の手は#{pc}です。あなたの負けです。")
    else judge == 0
      puts ("あいこです")
      janken = Janken.new
      janken.pon(Player.new.hand, Enemy.new.hand)
    end
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new
janken.pon(player.hand, enemy.hand)
