-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/03/2026 às 18:39
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `entrenotas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `imagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `banner`
--

INSERT INTO `banner` (`id`, `titulo`, `subtitulo`, `imagem`) VALUES
(1, '', '', '26-03-2026-13-29-54-banner-4.png'),
(2, '', '', '26-03-2026-14-38-25-orquestra.jpg'),
(3, '', '', '20-03-2026-09-34-17-banner-3.png'),
(5, '', '', '13-03-2026-16-54-18-banner-2.png'),
(6, '', '', '13-03-2026-16-51-28-banner-1.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `logo` varchar(80) NOT NULL,
  `icone` varchar(80) NOT NULL,
  `instagram` varchar(80) DEFAULT NULL,
  `twitter` varchar(80) DEFAULT NULL,
  `linkedin` varchar(80) DEFAULT NULL,
  `facebook` varchar(80) DEFAULT NULL,
  `youtube` varchar(80) DEFAULT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `titulo_servicos` varchar(50) DEFAULT NULL,
  `subtitulo_servicos` varchar(255) DEFAULT NULL,
  `titulo_trabalhos` varchar(50) DEFAULT NULL,
  `subtitulo_trabalhos` varchar(255) DEFAULT NULL,
  `titulo_equipe` varchar(50) DEFAULT NULL,
  `subtitulo_equipe` varchar(255) DEFAULT NULL,
  `titulo_contato` varchar(50) DEFAULT NULL,
  `subtitulo_contato` varchar(255) DEFAULT NULL,
  `texto_rodape` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `config`
--

INSERT INTO `config` (`id`, `nome`, `email`, `senha`, `telefone`, `endereco`, `logo`, `icone`, `instagram`, `twitter`, `linkedin`, `facebook`, `youtube`, `cor`, `titulo_servicos`, `subtitulo_servicos`, `titulo_trabalhos`, `subtitulo_trabalhos`, `titulo_equipe`, `subtitulo_equipe`, `titulo_contato`, `subtitulo_contato`, `texto_rodape`) VALUES
(1, 'Entre Notas', 'natydapaz1017@gmail.com', '123', '(11) 96087-9925', 'R. Francisco A Zeiler, 20 - Jardim Juliana, Ferraz de Vasconcelos - SP, 08502-410', 'logo.png', 'icone.png', '', '', '', '', '', '#115665', 'Serviços', 'Cursos e aulas desenvolvidos para diferentes estilos e níveis musicais.', 'Trabalhos', '', 'Equipe', 'Profissionais apaixonados por ensinar e compartilhar música.', 'Contate-nos', 'Preencha os Campos abaixo para entrar em contato conosco!', ' © 2026 EntreNotas. Todos os direitos reservados.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipe`
--

CREATE TABLE `equipe` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `imagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `equipe`
--

INSERT INTO `equipe` (`id`, `nome`, `cargo`, `imagem`) VALUES
(1, 'Lucas Andrade', 'Professor de Violão e Guitarra', '13-03-2026-15-24-45-guitarrista.jpg'),
(2, 'Marina Costa', 'Professora de Piano e Teoria Musical', '13-03-2026-15-24-37-pianista.jpg'),
(3, 'Rafael Mendes', 'Professor de Bateria e Prática Musical', '13-03-2026-15-24-29-baterista.jpg'),
(4, 'Carolina Vieira', 'Professora de Violino e Saxofone', '13-03-2026-15-24-21-violinista.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `exibir` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `servicos`
--

INSERT INTO `servicos` (`id`, `titulo`, `descricao`, `imagem`, `video`, `exibir`) VALUES
(1, 'Aulas de Saxofone', '<p data-start=\"602\" data-end=\"851\">As aulas de piano trabalham o desenvolvimento da técnica, coordenação entre as mãos, leitura de partituras e interpretação musical. O curso é indicado tanto para iniciantes quanto para alunos que desejam aprofundar seus conhecimentos no instrumento.</p>\r\n<p data-start=\"853\" data-end=\"1019\">Durante as aulas, os estudantes aprendem escalas, acordes, harmonia e prática de repertório, desenvolvendo habilidades que permitem tocar diferentes estilos musicais.</p>', '13-03-2026-14-55-43-Saxofone.jpg', 'https://www.youtube.com/embed/23I8OtXCs3o?si=stps2pWcHXsCrjbu', 'Vídeo'),
(2, 'Aulas de Bateria', '<p data-start=\"2668\" data-end=\"2854\">O curso de bateria trabalha coordenação rítmica, leitura de ritmos e prática de diferentes estilos musicais. As aulas ajudam o aluno a desenvolver precisão, controle e percepção rítmica.</p>', '13-03-2026-14-51-54-bateria.jpg', 'https://www.youtube.com/embed/B_NNyHT_Zhs?si=YMsXtSSoEnZ96aKM', 'Vídeo'),
(3, 'Aulas de Piano', '<p data-start=\"147\" data-end=\"388\">Desenvolva técnica, leitura musical e expressão ao piano de forma prática e personalizada. As aulas são adaptadas ao nível de cada aluno, com repertório variado e foco na evolução contínua, tornando o aprendizado leve, eficiente e motivador.</p>', '13-03-2026-14-55-19-piano.jpg', 'https://www.youtube.com/embed/PMUemge7hck?si=FDnmkVWnnFc8KIBr', 'Vídeo'),
(4, 'Aulas de Violino', '<p data-start=\"2882\" data-end=\"3121\">As aulas de violino focam no desenvolvimento da técnica do instrumento, postura, afinação e interpretação musical. O curso é indicado tanto para iniciantes quanto para alunos que desejam aprofundar seus conhecimentos na prática do violino.</p>', '13-03-2026-14-51-36-violino.jpg', 'https://www.youtube.com/embed/YV6sWLxXsPU?si=_42mKVURJ61KT2PC', 'Vídeo'),
(5, ' Aulas de Guitarra', '<p data-start=\"2418\" data-end=\"2640\">As aulas de guitarra abordam técnicas fundamentais do instrumento, como riffs, solos, escalas e improvisação. Os alunos aprendem a explorar diferentes estilos musicais, desenvolvendo habilidade técnica e expressão musical.</p>', '13-03-2026-14-45-27-guitarra.jpg', 'https://www.youtube.com/embed/oGv1c40Xyto?si=uE-jxp6TzZotRFqS', 'Vídeo'),
(6, 'Aulas de Violão', '<p data-start=\"2116\" data-end=\"2389\">O curso de violão é ideal para iniciantes e também para alunos que desejam aprimorar sua técnica. Durante as aulas, são trabalhados acordes, ritmos, leitura musical e prática de repertório, permitindo que o aluno desenvolva autonomia para tocar diferentes estilos musicais.</p>', '13-03-2026-14-45-52-violao.jpg', 'https://www.youtube.com/embed/Nm_wq3w9EyE?si=FZ9SxS6vMnLIWbHP', 'Vídeo'),
(7, 'Teoria Musical', '<p data-start=\"3148\" data-end=\"3393\">A teoria musical é essencial para compreender a estrutura da música. Nesse curso, os alunos aprendem conceitos como leitura de partituras, escalas, acordes, ritmo e harmonia, fortalecendo a base teórica necessária para o desenvolvimento musical.</p>', '26-03-2026-13-24-44-teoria-musical.jpg', '', 'Imagem'),
(11, 'Aulas de Canto', '<p data-start=\"80\" data-end=\"263\">Desenvolva sua voz com técnica, respiração e expressão vocal. As aulas são personalizadas para cada aluno, trabalhando afinação, controle e interpretação, de forma leve e progressiva.</p>', '26-03-2026-13-23-18-canto.jpg', '', 'Imagem');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sobre`
--

CREATE TABLE `sobre` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `subtitulo` varchar(50) DEFAULT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `exibir` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `sobre`
--

INSERT INTO `sobre` (`id`, `titulo`, `subtitulo`, `descricao`, `imagem`, `video`, `exibir`) VALUES
(1, 'Sobre', 'Uma escola dedicada ao desenvolvimento musical.', '<p data-start=\"255\" data-end=\"504\">A <strong data-start=\"257\" data-end=\"271\">EntreNotas</strong> é uma escola de música dedicada ao desenvolvimento artístico e musical de seus alunos. Nosso objetivo é tornar o aprendizado da música acessível, estimulante e significativo para pessoas de diferentes idades e níveis de experiência.</p>\r\n<p data-start=\"506\" data-end=\"734\">Acreditamos que a música é uma forma poderosa de expressão e aprendizado. Por isso, oferecemos um ambiente acolhedor, com professores qualificados e metodologias que estimulam a criatividade, a técnica e a sensibilidade musical.</p>\r\n<p data-start=\"736\" data-end=\"927\">Na EntreNotas, cada aluno é incentivado a desenvolver seu próprio estilo, explorando diferentes instrumentos, ritmos e práticas musicais, sempre respeitando o ritmo individual de aprendizado.</p>', '20-03-2026-09-52-42-empresa.jpg', '', 'Imagem');

-- --------------------------------------------------------

--
-- Estrutura para tabela `trabalhos`
--

CREATE TABLE `trabalhos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descricao` text DEFAULT NULL,
  `imagem` varchar(100) NOT NULL,
  `video` varchar(100) DEFAULT NULL,
  `exibir` varchar(20) NOT NULL,
  `link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `trabalhos`
--

INSERT INTO `trabalhos` (`id`, `titulo`, `descricao`, `imagem`, `video`, `exibir`, `link`) VALUES
(1, 'Bandas', '&nbsp;São formadas por alunos que se reúnem para desenvolver repertórios musicais e realizar apresentações em eventos culturais e atividades da instituição. O projeto tem como objetivo incentivar a prática em grupo e o desenvolvimento da performance musical.', '13-03-2026-15-55-49-banda.png', 'https://www.youtube.com/embed/p7diRYLiYzQ?si=0nNEHPVjUg2dqHQW', 'Vídeo', ''),
(2, 'Participação em Eventos Musicais', '<p data-start=\"1293\" data-end=\"1516\">Alguns alunos da escola já participaram de apresentações em eventos musicais e atividades culturais locais. Essas experiências permitem que os estudantes desenvolvam presença de palco e experiência em apresentações ao vivo.</p>', '13-03-2026-15-57-47-festival.png', '', 'Imagem', ''),
(3, 'Projetos Instrumentais', '<p data-start=\"1551\" data-end=\"1776\">Durante o aprendizado, alunos desenvolvem projetos instrumentais individuais ou em grupo, explorando diferentes estilos musicais e técnicas de execução. Esses projetos ajudam a fortalecer a criatividade e a autonomia musical.</p>', '13-03-2026-16-01-25-projetos-instrumentais.jpeg', '', 'Imagem', ''),
(5, 'Ensemble de Cordas', '<p data-start=\"987\" data-end=\"1168\">Alunos das aulas de violino participaram de um ensemble de cordas, onde puderam desenvolver a prática musical coletiva, trabalhando afinação, ritmo e interpretação musical em grupo.</p>', '13-03-2026-16-07-43-ensemble.jpg', '', 'Imagem', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sobre`
--
ALTER TABLE `sobre`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `trabalhos`
--
ALTER TABLE `trabalhos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `sobre`
--
ALTER TABLE `sobre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `trabalhos`
--
ALTER TABLE `trabalhos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
