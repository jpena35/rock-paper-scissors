function [winner] = rockPaperScissors()

    num = input('1 or 2 players? ');
    if (num ~= 1 && num ~= 2)
        error('Invalid number of players. Restart and enter 1 or 2.')
    end
    one = 1;
    two = 2;
    if num == one
        yourMove = input('\nIt''s time to make a move!\nEnter 1 for rock, 2 for paper, or 3 for scissors.\n');
        player = yourMove;
        if (player ~= 1 && player ~= 2 && player ~= 3)
            error('You must enter 1, 2, or 3.')
        elseif player == 1
            yourMove = 'rock';
        elseif player == 2
            yourMove = 'paper';
        elseif player == 3
            yourMove = 'scissors';
        end
        opponent = computerMove;
        if opponent == 1
            compMove = 'rock';
        elseif opponent == 2
            compMove = 'paper';
        elseif opponent == 3
            compMove = 'scissors';
        end
        if player == opponent
            winner = sprintf('You chose %s. Your opponent chose %s. \nResult: \nIt''s a tie!',yourMove,compMove);
            figure
            imshow('tie.png')
        elseif player == 1 && opponent == 2
            winner = sprintf('You chose %s. Your opponent chose %s. \nResult: \nYou lose!',yourMove,compMove);
            figure
            imshow('rockLose.png')
        elseif player == 1 && opponent == 3
            winner = sprintf('You chose %s. Your opponent chose %s. \nResult: \nYou win!',yourMove,compMove);
            figure
            imshow('rockWinSinglePlayer.png')
        elseif player == 2 && opponent == 3
            winner = sprintf('You chose %s. Your opponent chose %s. \nResult: \nYou lose!',yourMove,compMove);
            figure
            imshow('paperLose.png')
        elseif player == 2 && opponent == 1
            winner = sprintf('You chose %s. Your opponent chose %s. \nResult: \nYou win!',yourMove,compMove);
            figure
            imshow('paperWinSinglePlayer.png')
        elseif player == 3 && opponent == 1
            winner = sprintf('You chose %s. Your opponent chose %s. \nResult: \nYou lose!',yourMove,compMove);
            figure
            imshow('scissorsLose.png')
        elseif player == 3 && opponent == 2
            winner = sprintf('You chose %s. Your opponent chose %s. \nResult: \nYou win!',yourMove,compMove);
            figure
            imshow('scissorsWinSinglePlayer.png')
        end
    elseif num == two
        player1 = input('\nIt''s Player 1''s turn!\nEnter 1 for rock, 2 for paper, or 3 for scissors.\n');
        if (player1 ~= 1 && player1 ~= 2 && player1 ~= 3)
            error('You must enter 1, 2, or 3.')
        end
        if player1 == 1
            p1 = 'rock';
            clc
        elseif player1 == 2
            p1 = 'paper';
            clc
        elseif player1 == 3
            p1 = 'scissors';
            clc
        end
        player2 = input('\nIt''s Player 2''s turn!\nEnter 1 for rock, 2 for paper, or 3 for scissors.\n');
        if (player2 ~= 1 && player2 ~= 2 && player2 ~= 3)
            error('You must enter 1, 2, or 3.')
        end
        if player2 == 1
            p2 = 'rock';
        elseif player2 == 2
            p2 = 'paper';
        elseif player2 == 3
            p2 = 'scissors';
        end
        if player1 == player2
            winner = sprintf('Player 1 chose %s. Player 2 chose %s. \nResult: \nIt''s a tie!',p1,p2);
            figure
            imshow('tie.png')
        elseif player1 == 1 && player2 == 2
            winner = sprintf('Player 1 chose %s. Player 2 chose %s. \nResult: \nPlayer 2 wins!',p1,p2);
            figure
            imshow('paperWinPlayer2.png')
        elseif player1 == 1 && player2 == 3
            winner = sprintf('Player 1 chose %s. Player 2 chose %s. \nResult: \nPlayer 1 wins!',p1,p2);
            figure
            imshow('rockWinPlayer1.png')
        elseif player1 == 2 && player2 == 3
            winner = sprintf('Player 1 chose %s. Player 2 chose %s. \nResult: \nPlayer 2 wins!',p1,p2);
            figure
            imshow('scissorsWinPlayer2.png')
        elseif player1 == 2 && player2 == 1
            winner = sprintf('Player 1 chose %s. Player 2 chose %s. \nResult: \nPlayer 1 wins!',p1,p2);
            figure
            imshow('paperWinPlayer1.png')
        elseif player1 == 3 && player2 == 1
            winner = sprintf('Player 1 chose %s. Player 2 chose %s. \nResult: \nPlayer 2 wins!',p1,p2);
            figure
            imshow('rockWinPlayer2.png')
        elseif player1 == 3 && player2 == 2
            winner = sprintf('Player 1 chose %s. Player 2 chose %s. \nResult: \nPlayer 1 wins!',p1,p2);
            figure
            imshow('scissorsWinPlayer1.png')
        end
    else
        error('Invalid number of players. Restart and enter 1 or 2.')
    end
    % winner = 'test';

end
function [play] = computerMove()
    play = round(3 .* rand(1));
    if play == 0
        play = play + 1;
    end
end