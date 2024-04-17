-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/04/2024 às 18:42
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
-- Banco de dados: `moviestar`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `movies`
--

CREATE TABLE `movies` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `trailer` varchar(300) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `length` varchar(200) DEFAULT NULL,
  `users_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `image`, `trailer`, `category`, `length`, `users_id`) VALUES
(1, 'Por lugares Incriveis ', 'Dois adolescentes que estão passando por momentos difíceis criam um forte laço quando embarcam em uma jornada transformadora para visitar as maravilhas do estado de Indiana, nos Estados Unidos.', '4dd84bcd26d28735f14f802cde359a85783c44fe2de1674fc154abb164c35c8c7add503aaded792c4d338f67021a422a6ab5c95ddef4abfd0efce4c3.jpg', '<iframe width=\"600\" height=\"600\" src=\"https://www.youtube.com/embed/EIO6dLmGy3g?si=idq2WjnM2ZxeklK9\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origi', 'Drama', '1 hr 50 min', 1),
(2, 'Suzume', 'Uma garota de 17 anos chamada Suzume descobre uma porta misteriosa nas montanhas, e logo outras começam a aparecer por todo o Japão. Quando abertas, elas trazem desastre e destruição, e apenas Suzume pode fechá-las novamente.', 'd09fd5af9df9899654f21b438fbcaffd23b53311edace4ec6773050dede165b45c997400a880a5a26d002349e83b2f1e6977ce92ce96b7816e4dfb64.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/fbtQ5KG4G_A?si=dInPMOiaDkBFcGbc\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origi', 'Romance', '1 hr 50 min', 1),
(3, 'Your Name', 'Mitsuha é a filha do prefeito de uma pequena cidade, mas sonha em tentar a sorte em Tóquio. Taki trabalha em um restaurante em Tóquio e deseja largar o seu emprego. Os dois não se conhecem, mas estão conectados pelas imagens de seus sonhos.', '73390730dd7f838d9ce350614c37b336b9d81ed1860904ed7807f0221a9e5a75c7d62fc17de4e6d7372064d2d741124242e14a6d3fd145aa2a0b723f.jpg', '<iframe width=\"650\" height=\"550\" src=\"https://www.youtube.com/embed/soQXM3XVvIU?si=EWYlGEuP5TcZOSuh\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origi', 'Romance', '90 min', 1),
(4, 'Tropa de Elite 2: O inimigo agora é outro', 'Depois de uma operação fracassada, Nascimento é afastado do Bope e agora trabalha como subsecretário de Inteligência na Secretaria de Segurança Pública do Rio de Janeiro. No novo cargo, o ex-capitão é arrastado para uma disputa política sangrenta que envolve funcionários do governo e grupos paramilitares.', '033f46a59d4febaa461546cd9b854a55f8812a35941e3f0a5a95c82e29e5526c2cb801a2383785682fb9e4accaaa5899b42ee21994b96b7c4087b13f.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-JbE6rjjyD8?si=ZNIkG6lF9OOi10VF&amp;start=15\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-whe', 'Ação', '1 hr 50 min', 1),
(5, 'Interstellar ', 'As reservas naturais da Terra estão chegando ao fim e um grupo de astronautas recebe a missão de verificar possíveis planetas para receberem a população mundial, possibilitando a continuação da espécie. Cooper é chamado para liderar o grupo e aceita a missão sabendo que pode nunca mais ver os filhos. Ao lado de Brand, Jenkins e Doyle, ele seguirá em busca de um novo lar.', '21172bb776ab955d077ed6ca66000abacebbdd6162713f9b843fa5489f1f6428e6d4e48df0077330d613c3b78fe1208cad0a21899f313aeca5475578.jpg', '<iframe width=\"600\" height=\"350\" src=\"https://www.youtube.com/embed/mbbPSq63yuM?si=0S8ZF-6UK3dODJS-\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origi', 'Ficção Cientifica', '2 horas 2 min', 1),
(6, 'Como treinar o seu Dragão ', 'Soluço é um jovem viking que não tem capacidade para lutar contra os dragões, como é a tradição local. Sua vida muda quando ele ajuda um dragão que lhe mostra toda a verdade. Juntos, eles tentam provar que dragões e humanos podem ser amigos.', '84363847c13a10020c80f468f4b46e42557fa0e3aa767a81d420a75cb54af7e6d8ea0d27d22cc91e3ee27d30cac3043141b217d3effd1d386faa86d6.jpg', '<iframe width=\"600\" height=\"500\" src=\"https://www.youtube.com/embed/uv1V9BOb2M8?si=DV_ZPBYSxHObCjWx\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origi', 'Animação', '1 hr 37 min', 1),
(7, 'Jujutsu Kaisen 0', 'O estudante colegial Yuta Okkotsu deseja ser executado porque sofre com as ações de Rika Orimoto, que foi transformada em espírito amaldiçoado. Enquanto isso, Satoru Gojo, professor que ensina a exorcizar \"maldições\", transfere Yuta para Escola Técnica Superior de Jujutsu de Tóquio.', '54b0301de40762b049ab2b3e5146fcd86d3f0b8d9969fff53692768d40e1e79a64e79b4796aeb905f5e4825bf748aaea6082e5108da2f5a54622abb8.jpg', '<iframe width=\"600\" height=\"500\" src=\"https://www.youtube.com/embed/hebqhXBM5p0?si=p1KBpHU-Q-1_CYmW\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origi', 'Animação', '', 1),
(8, 'American Pie: Caindo Em Tentação', 'Erik Stifler e Cooze ingressam na vida acadêmica, na Universidade de Michigan. Os dois logo são são apresentados a Fraternidade Beta, presidida pelo lendário Dwight Stifler, primo de Erik. A Fraternidade Beta é famosa por suas festas. Enquanto os calouros tentam um lugar na irmandade, Dwight tenta salvar a Beta dos ataques da conservadora Fraternidade GEK, formada por nerds e comandada por Edgar que quer acabar com a supremacia dos libertinos.', '39b5e0bf1434b814235b814dd51c63cea71b253bc3f6d2308271e190fe96efc6f8a1a251d67a35bf7f1c5045507061e56e35c6ea298ca78457b362f9.jpg', '<iframe width=\"650\" height=\"500\" src=\"https://www.youtube.com/embed/V_PCi8UohfE?si=2GHcKDBK44EMxsnw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origi', 'Comédia', '1 hr 37 min', 1),
(9, 'Como treinar o seu Dragão 2 ', 'Cinco anos se passaram desde que Soluço estabeleceu a paz com os dragões e vive em harmonia, na Ilha de Berk, com Banguela. Eles voam, apostam corridas e se divertem muito. Em uma destas aventuras, descobrem uma caverna secreta cheia de dragões. Agora, a dupla luta para proteger Berk de um guerreiro perigoso, chamado Drago Bludvist, que deseja controlar todos os dragões existentes.', '0439484c143d0110300568ed91b8931c845605c166c583ec3b4a2816d4ba62b0d09f27f2a7271ccddb260da5a582c4bf114088cfbb9b9ab2b8db691c.jpg', '<iframe width=\"650\" height=\"500\" src=\"https://www.youtube.com/embed/VUoCQFNoRMc?si=BCNWUItpuWy7r81l\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origi', 'Animação', '1 hr 50 min', 2),
(10, 'Jogador N° 1', 'Em 2045, Wade Watts, assim como o resto da humanidade, prefere a realidade virtual do jogo OASIS ao mundo real. James Halliday, o excêntrico criador do jogo, morre e deixa sua fortuna inestimável para a primeira pessoa que descobrir a chave de um quebra-cabeça diabólico que ele arquitetou. Para vencer, Watts precisa abandonar a existência virtual e experimentar o amor e a realidade.\r\n', '9bada6818267520468d7c4074d6d5e12150644c1930a61c7a5595a3b4d35706f447c1e4aaf57a124a974413bea9642c54052c20ed20ca22c0e2e082f.jpg', '<iframe width=\"650\" height=\"500\" src=\"https://www.youtube.com/embed/yulwIjJ-C4Q?si=yRbsr0MSKud085MX\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origi', 'Aventura', '1 hr 50 min', 2),
(11, 'Oppenheimer ', 'O físico J. Robert Oppenheimer trabalha com uma equipe de cientistas durante o Projeto Manhattan, levando ao desenvolvimento da bomba atômica.\r\n', '6273791114bccda1def38a0f929b99a397273f5a4a4cd6e7e03a5f49eefcd2acb3a65b63a9d2694e5e14bedd1f8254d72947295e64c20012590f5355.jpg', '<iframe width=\"650\" height=\"500\" src=\"https://www.youtube.com/embed/F3OxA9Cz17A?si=sMkv6EPe1Q37ZDPD\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origi', 'Drama', '3 horas e 2 ', 2),
(12, 'Harry Potter e a Ordem da Fenix', 'Após um verão desastroso, Harry volta para o seu quinto ano em Hogwarts, um dos mais difíceis que terá de encarar. Pouquíssimos alunos e pais acreditam nele ou em Dumbledore sobre a volta de Voldemort, e uma série interminável de artigos circula dizendo que eles estão completamente malucos. Ainda por cima, Dolores Umbridge, a nova professora de Defesa Contra as Artes das Trevas, prova ser a pessoa mais repugnante que Harry já conheceu.\r\n', '70f6105a6f0f339da837578409b86a85bc7551ec347fe32ea131f8dd18e83089268b55591eda496376169757d246fc01f0eb5274f769bab70daee7d8.jpg', '<iframe width=\"650\" height=\"500\" src=\"https://www.youtube.com/embed/ZkDCaxUNV3o?si=w5ULvMjQY9uG_s0C\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origi', 'Fantasia ', '2 hr 10 min', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) UNSIGNED NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `review` text DEFAULT NULL,
  `users_id` int(11) UNSIGNED DEFAULT NULL,
  `movies_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `review`, `users_id`, `movies_id`) VALUES
(1, 10, 'O filme é muito bom, so que tem uns problemas que faz o filme ser um pouco chato', 2, 1),
(2, 9, 'Filme Muito bom para quem gosta de ficção, sem falar do fato do filme ter cada detalhe pensado ', 2, 5),
(3, 10, 'Filme muito bom, prende mesmo que estar assistindo o filme', 1, 11),
(4, 9, 'ADIASDOADA', 3, 11),
(5, 8, 'SADASDASD', 3, 5),
(6, 10, 'ADADA', 3, 1),
(7, 9, 'sadad', 3, 10),
(8, 10, 'adasda', 3, 12);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL,
  `bio` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `password`, `image`, `token`, `bio`) VALUES
(1, 'LUCAS', 'SILVA', 'lukas.silvalsm@gmail.com', '$2y$10$eIZJRf40Us/yQ7NZETjTJ.ER1VxGITxegXA6BEAVdJ8Yz/dFcieTy', '3dc1e04a541925f720899b63689ea56024ec7afc41ddeb0f1d4b724a47d49ed5a06cb1d08428aeeecac8e9ffc13b2f67d40a61706a54b0921b1d60eb.jpg', 'bff4951b8eb7f4db5c69fbe3720b1091f37705141ed1586642f5dd091bd36e08521bc1b344138fca863b7ce87b6dde36e7cd', 'Sou um Programador Iniciante'),
(2, 'LUCAS', 'MOREIRA', 'lukas.silvalsm@hotmail.com', '$2y$10$VOvLOmLacSyoy8p0Iglj3.h3QDU/XNQ9CnIYegA3sr/w1G/o5huLm', '58afa71f9fed110c91dfca6912e5b2be0a76538e492f9fc7356977c46983f7529779be292ce4aced6f0515fe6be15dec57ace810cffeda8b2b9f2ab6.jpg', '39f31d1c2d839fa55f5af4afe0e6bd93bf19874a15b4b2bc686e8d6b57b81070dca3e9487e152f2bcca356e07db7507a5d45', 'Sou um programador'),
(3, 'TESTE ', '01', 'teste@teste.com', '$2y$10$0D11XedtxB5yrPkdKG1wSeDARIMkedruuCOj6uKW1IRMsvjoYHq2.', NULL, '63ca29763d1d8632794c665cf201c7a53fe3778b716d41a5e9f20d924f6fd43ff55ed1bfc9bd3ed124d1bec59ae2d9929476', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`);

--
-- Índices de tabela `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `movies_id` (`movies_id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Restrições para tabelas `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
