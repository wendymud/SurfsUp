-- Joining matches1b and players1c
SELECT pl.player_id, pl.first_name, pl.last_name, pl.hand, m.winner_id
FROM players1c as pl
LEFT JOIN matches1b as m
ON pl.player_id = m.loser_id OR pl.player_id = m.winner_id
GROUP BY pl.hand='l',pl.player_id, m.winner_id
-- ORDER BY pl.hand, m.winner_id

CREATE TABLE matches1b (
	loser_age DEC NOT NULL,
	loser_id INT NOT NULL,
	loser_name VARCHAR(80) NOT NULL,
	loser_rank INT NOT NULL,
	winner_age DEC NOT NULL,
	winner_id INT NOT NULL,
	winner_name VARCHAR (80) NOT NULL,
	winner_rank INT NOT NULL
);
-- Number of matches Serena Williams has won in matches dataset
SELECT COUNT (winner_name)
FROM matches1b
WHERE winner_name='Serena Williams'

--count of players for each dominant hand
SELECT COUNT (hand)
FROM players1c
WHERE hand='R'

SELECT COUNT (hand)
FROM players1c
WHERE hand='L'

--number of wins from dominant hands
SELECT COUNT (hand)
FROM players1c
WHERE hand='R'

CREATE TABLE players1c(
	player_id INT NOT NULL,
	first_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(60) NOT NULL,
	hand VARCHAR(1) NOT NULL,
	country_code VARCHAR(3) NOT NULL,
	PRIMARY KEY (player_id)
);

SELECT * FROM players1c

-- Joining matches1b and players1c
SELECT pl.player_id, pl.first_name, pl.last_name, pl.hand, m.winner_id
FROM players1c as pl
LEFT JOIN matches1b as m
ON pl.player_id = m.loser_id OR pl.player_id = m.winner_id
GROUP BY pl.hand='l',pl.player_id, m.winner_id
-- ORDER BY pl.hand, m.winner_id


-- count of winning matches by hand
SELECT COUNT(pl.player_id) hand
FROM players1c as pl
--	matches1b as m
WHERE (hand = 'L')

SELECT COUNT(pl.player_id) hand
FROM players1c as pl
--	matches1b as m
WHERE (hand = 'R')
