-- 1 - Buscar o nome e ano dos filmes

select 
	Nome, 
	Ano 
from Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select 
	Nome,
	Ano,
	Duracao
from Filmes
	order by Ano;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select 
	Nome,
	Ano,
	Duracao
from Filmes
	where Nome = 'De Volta para o Futuro';

-- 4 - Buscar os filmes lançados em 1997
select 
	Nome, 
	Ano, 
	Duracao
from Filmes
	where Ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000
select 
	Nome, 
	Ano,
	Duracao
from Filmes
	where Ano >= 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando 
-- pela duracao em ordem crescente
select 
	Nome, 
	Ano,
	Duracao
from Filmes
	where Duracao BETWEEN 100 and 150;
	--where Duracao >= 100 and Duracao <= 150;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando 
-- pela duracao em ordem decrescente
select 
	Ano,
	COUNT(*) as Quantidade
from Filmes
	group by Ano 
	order by Ano DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
from Atores
	where Genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e 
-- ordenando pelo PrimeiroNome
select 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
from Atores
	where Genero = 'F'
order by PrimeiroNome;

-- 10 - Buscar o nome do filme e o gênero
SELECT 
    Filmes.Nome AS Nome,
    Generos.Genero AS Genero
FROM 
    Filmes
INNER JOIN 
    FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN 
	Generos ON FilmesGenero.IdGenero = Generos.Id;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério" 
SELECT 
    Filmes.Nome AS Nome,
    Generos.Genero AS Genero
FROM 
    Filmes
INNER JOIN 
    FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN 
	Generos ON FilmesGenero.IdGenero = Generos.Id
	where Generos.Genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, 
-- UltimoNome e seu Papel
select
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	e.Papel
from 
	Filmes f
INNER JOIN 
	ElencoFilme e on f.Id = e.IdFilme
INNER JOIN 
	Atores a on e.IdAtor = a.Id;