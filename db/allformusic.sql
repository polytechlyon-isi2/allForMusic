-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 25 Avril 2016 à 21:52
-- Version du serveur :  5.5.44-0+deb8u1
-- Version de PHP :  5.6.17-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `allformusic`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_article`
--

CREATE TABLE IF NOT EXISTS `t_article` (
`art_id` int(11) NOT NULL,
  `art_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `art_desc` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `art_price` int(11) NOT NULL,
  `art_dispo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `art_cat` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `t_article`
--

INSERT INTO `t_article` (`art_id`, `art_name`, `art_desc`, `art_price`, `art_dispo`, `art_cat`) VALUES
(11, 'Eagleton SUN STATE BASS J SUNBURST', 'La gamme Sun State d''Eagletone propose guitares et basses de qualité, robustes, versatiles et surtout qui tiendront dans le temps.\r\nLa basse Sun State Bass J est équipée d''une configuration électronique éprouvée : deux micros simples passifs branchés en parallèle produisant un son très brillant mais aussi capable de créer des sonorités chères au Jazzmen.\r\nAssocié à un corps en tilleul, un bois aux sonorités chaudes et en même temps très claquantes, elle permet d''envisager tous les styles : Jazz, Blues, Funk, Rock, Heavy Metal...', 129, 'En stock', 'Bass'),
(12, 'Ibanez SR1800 NTF NATURAL FLAT', '2x micros Nordstrand Big Single (manche et Chevalet) - égalisation EQB-IIISC 3-bandes - accastillage doré - corps en acajou avec poutre centrale en noyer et table en palissandre et érable flammée - manche SR Atlas Premium en wenge et bubinga - touche en wenge 24 cases medium - Chevalet Mono-Rail IV', 1329, 'Pas disponible', 'Bass'),
(13, 'Fender AMERICAN STANDARD 2014 JAGUAR BASS SUNBURST ', 'La toute première Fender Jaguar Bass fabriquée aux U.SA. est une beauté racée et puissante, mise à jour avec une configuration de micros P/J polyvalente, un Chevalet High-Mass Vintage avec une combinaison Top Load/Cordes Traversantes, des mécaniques légères Fender "F" avec un guide pour la corde de La, et une tige de réglage accessible au bas du manche.\r\nLe micro simple splitté Precision Bass utilise des aimants Alnico 5, tandis que le micro Chevalet Jazz Bass à simple bobinage possède des barres d''aimants en céramique et des plots à vis hexagonales. Toutes les autres caractéristiques remarquables de la Jaguar Bass sont également présentes, notamment le manche en érable rapide et confortable, la touche en palissandre au radius de 9.5" avec 20 Frettes medium jumbo et ses incrustations Block perloïdes blanches vieillies, la Plaque de protection multiplis, les switches on/off pour les micros et la configuration en série/parallèle sur la corne inférieure, et le switch actif/passif sur la corne supérieure pour la conception à double circuit avec molettes de contrôle des graves et des aigus intégrées.', 1709, 'En stock', 'Bass'),
(14, 'Music Man STERLING CLASSIC COLLECTION MN BLACK', 'Type : Solid Body\r\nNombre de cordes : 4\r\n\r\nManche\r\nType : Vissé\r\nBois : Erable flammé\r\nFinition : Vernis polyester haute brillance\r\nLargeur au sillet (mm) : 38,1\r\nLargeur à la dernière frette (mm) : 63,5\r\nType de sillet : Compensé\r\nTouche\r\nBois : Érable \r\nRayon de la touche (mm) : 191\r\nType de Frettes : Hautes et fines\r\nNombre de Frettes : 22\r\nDiapason (mm) : 864\r\nRepères : Points\r\nCaisse\r\nBois : Frêne\r\nFinition : Vernis polyester haute brillance\r\nCouleur : Noir\r\n\r\nAccessoires\r\nCouleur Plaque de protection : Noire\r\nMarque des mécaniques : Schaller\r\nType de mécaniques : BM\r\nType de Chevalet : En acier avec pontets en inox avec étouffoirs\r\nMarque du Chevalet : Music Man\r\nFinition : Chrome', 2979, 'En stock', 'Bass'),
(15, 'Epiphone THUNDERBIRD PRO IV VINTAGE SUNBURST', 'En tirant les conclusions du succès de la basse Thunderbird classique, Epiphone nous présente ici la nouvelle série Thunderbird professionnelle. Disponible en version 4 ou 5 cordes, LA basse rock''n''roll par excellence à la forme si particulière, combine désormais tradition et nouvelle technologie. Le tout pour un prix abordable.\r\n\r\nLa Thunderbird PRO possède un manche robuste, confectionné à l''aide de 7 couches de bois (noyer/erable/noyer/erable/noyer/erable/noyer), et relié à un corps massif afin d''optimiser son sustain. Ajoutez à cela les nouveaux micros actifs, Humbucker, T-ProTM spécial Basse, et la Thunderbird PRO se transforme soudain en une bête polymorphe, passant aisément d''un registre à l''autre sans flancher une seconde.', 493, 'Pas disponible', 'Bass'),
(16, 'Yamaha BB2024NT + ETUI NATURAL', 'La nouvelle BB2024 partage les mêmes caractéristiques techniques et sonores que la nouvelle BB2024. \r\n\r\nConception\r\nGrâce à la conception de son corps en aulne en 3 parties traitées ARE et la fixation du Chevalet sur la pièce centrale le transfert des vibrations est grandement amélioré. La conception du corps de la nouvelle série BB ne relève pas du simple collage. Chaque partie est assemblée par une section en érable qui permet d’obtenir autant de vibrations qu’une conception en seule pièce.\r\n\r\nChevalet\r\nGrâce à son cordier traversant le corps, l’angle de 45° des cordes au Chevalet permet de réduire la tension sur les masses métalliques. La distance entre l’attache et le Chevalet étant plus importante que sur un Chevalet traditionnel, celle-ci permet une transmission optimale des vibrations.', 2949, 'En stock', 'Bass'),
(17, 'ESP 2STREAMFM TRANS BLACK + ETUI', 'Les bassistes sont loin d''être laissés pour compte avec ESP ! Des formes traditionnelles aux conceptions les plus évoluées en 4 ou 5 cordes, tous y trouveront forcément leur compte avec ces lutheries de grande qualité.\r\n\r\n- 4 cordes\r\n- Corps en frêne\r\n- Manche vissé en érable\r\n- Touche en palissandre\r\n- 21 Frettes Extra Jumbo\r\n- Accastillage noir \r\n- Mécaniques Gotoh\r\n- Chevalet Hipshot\r\n- Strap locks Schaller\r\n- 1 x EMG 35J (chevalet) et 1 x EMG 35P4 (manche) actifs\r\n- Livrée en étui', 2199, 'En stock', 'Bass'),
(21, 'Bird DG1 NATURELLE', 'La gamme Bird acoustique et électro-acoustique a été spécialement pensée pour les guitaristes débutants.\r\nSa configuration traditionnelle, table épicéa et corps acajou, confère aux guitares DG1 une belle sonorité, bien équilibrée, entre brillance et puissance.\r\n\r\nLa très belle finition naturelle brillante de la DG1 NL et son confort de jeu en font une guitare d''apprentissage très réussie.\r\nCaractéristiques techniques :\r\n\r\n- Modèle : Dreadnought\r\n- Table : Epicéa\r\n- Dos et éclisses : Acajou\r\n- Touche et Chevalet : Palissandre\r\n- Plaque de protection : Noire\r\n- Filets de table, de dos et de manche\r\n- Mécaniques : Bain d''huile\r\n- Cordes : Américaines\r\n- Finition : Naturel brillant', 69, 'Pas disponible', 'Guitare'),
(22, 'Martin ERIC CLAPTON SUNBURST + ETUI', 'Tête : Palissandre d''Inde de l''Est, logo Large Old Style\r\nMécaniques : Ouvertes, finition nickel, avec boutons "Butterbean"\r\nSillet de tête : Os, 44,4mm\r\nManche : Bois sélectionné\r\nFinition Manche : Vernis poli\r\nProfil du manche : Modified V\r\nTouche : Ebène noir\r\nNombre de Frettes : 20\r\nType de corps : 000, jonction corps/manche à la 14ème frette\r\nDiapason : 632mm\r\nTable : Epicéa Sitka massif\r\nFinition Table : Verni poli, Sunburst 1935\r\nRosace : Fine Herringbone\r\nDos : Palissandre massif d''Inde de l''Est\r\nEclisses : Palissandre massif d''Inde de l''Est\r\nFinition Dos & Eclisses : Vernis poli\r\nFilet de table : Herringbone\r\nChevalet : Ebène noir massif\r\nSillet de Chevalet : Compensé en os, radius 406mm\r\nCordes : Martin Light Phosphor Bronze (EC12 )\r\nEtui : Type 533E Geib style', 4185, 'En stock', 'Guitare'),
(31, 'Roland MUSIC ATELIER AT-900 ORGUE 2 + BANQUETTE', 'Le buffet de l’orgue AT‑900, fabriqué aux États‑Unis, est en bois massif. L’élégance du buffet est encore rehaussée par un éclairage bien pensé, un pupitre coulissant et un grand écran tactile couleur. L’esthétique purement visuelle du fleuron de la série Atelier est un hommage à la magnificence des sonorités Roland. Cet instrument est un véritable régal pour les yeux, les oreilles et les doigts.\r\n* Les tirettes harmoniques rappellent les commandes familières d’un orgue\r\n* Superbes sonorités d’orgues, symphoniques et orchestrales comprenant notamment les magnifiques sons d’orgues à tuyaux des fameux orgues classiques RODGERS\r\n* Avec la technologie SuperNATURAL™, les sons d’instruments acoustiques bénéficient d’une réponse particulièrement expressive\r\n* Panneau de commandes facile à utiliser, reposant sur les principes traditionnel du jeu d’orgue; les fonctions avancées peuvent être réglées sur un écran couleur tactile\r\n* Fonctions d’accompagnement automatique donnant l’impression de jouer avec un grand orchestre, un big band, un trio de jazz ou un groupe pop\r\n* Contrôleur D BEAM permettant de modifier le son par mouvements de la main au‑dessus d’un rayon invisible\r\n* Facilité d’emploi grâce aux registrations effectuées par des organistes mondialement célèbres et aux fonctions Music Assistant\r\n* Port USB pour clé de mémoire USB et lecteur de disquette USB (FD‑01A) simplifiant le stockage et le transfert de données\r\n* Reproduction du répertoire VIMA TUNES via un lecteur CD disponible en option, permettant d’afficher les paroles des morceau et de magnifiques diaporamas d’ambiance\r\n', 29999, 'En stock', 'Piano'),
(32, 'Eagletone Claviers-maitre - 61/76 Touche\r\nMASTER K61 - 61 TOUCHES', 'Grâce à leur polyvalence et leur simplicité d''utilisation, les claviers MASTER K25, K49 et K61 sont des alliés précieux sur scène comme en studio. \r\nDotés d''un clavier, de pads, de potentiomètres rotatifs, de faders et compatibles avec la plupart des logiciels de production musicale, ces claviers maîtres très complets transforment l''inspiration du moment en composition réussie. \r\nCaractéristiques techniques :\r\n\r\n- Clavier maître 61 touches\r\n- 8 pads de déclenchement sensibles à la vélocité\r\n- 2 entrées pédale assignables\r\n- 9 curseurs assignables\r\n- Molettes de modulation et de pitch Bend assignables\r\n- 6 boutons dédiés au transport (MMC)\r\n- 1 port de sortie MIDI OUT, 1 port d''entrée MIDI IN\r\n- Interface USB, compatible avec le format USB 2.0 (FULL SPEED)\r\n- Alimentation électrique par USB et adaptateur secteur 9V CC (non fourni)\r\n- Compatible avec Windows XP / Vista / Windows 7 et Max OSX\r\n- Plug and Play\r\n- Accessoires fournis : Câble USB, mode d''emploi\r\n- Logiciel Cubase LE 8 inclus (en téléchargement depuis votre compte client)\r\n- Dimensions : 930 x 270 x 60 mm\r\n- Poids : 4.3 kg', 199, 'Pas disponible', 'Piano'),
(41, 'Bird Batterie acoustique - Batterie Jazz\r\nDS102J BK', 'Bird propose la batterie DS102J BK, le kit complet pour les petits budgets, et les petites tailles. Tout ce qu''il faut pour que les plus jeunes puissent s''initier à la batterie sans se ruiner.\r\n\r\n- Configuration junior / jazzette\r\n- Fûts en tilleul 6 plis\r\n- Cerclages et hardware noirs\r\n- Set d''accessoires complet\r\nComposition :\r\n\r\n1 Tom 10" x 8"\r\n1 Tom 12" x 8"\r\n1 Tom basse 14" x 12" \r\n1 caisse claire 14" x 5"\r\n1 Grosse caisse 18" x 14"\r\nAccessoires : \r\n\r\n1 Pied de cymbale droit\r\n1 Pédale de charleston\r\n1 Pédale de grosse caisse\r\n1 Stand de caisse claire\r\n1 paire de cymbales charleston\r\n1 Cymbale Crash\r\n1 Siège\r\n1 Paire de baguettes 5A', 199, 'Pas disponible', 'Batterie'),
(42, 'Gretsch CC1-J484-COS - CATALINA CLUB 2014 JAZZ 18" - COPPER SPARKLE', 'Les nouvelles Catalina Club 2014 :\r\n\r\n- Fûts 7 plis Acajou avec nouveau badge.\r\n- chanfrein à 30°\r\n- Suspension 2 points (plus légère et profilée)\r\n- Peaux Remo simple pli sablée \r\n- Grosse-caisse équipée du système de serrage à mémoire "G-branded memory lock".\r\n- Nouveau système de fixation L-rod avec vis papillon en T.\r\n- Nouveaux supports de tom avec ajustement à vis papillon en T et perchette cymbale 7/8"\r\nDescription :\r\nConfiguration : 18", 12", 14" + CC 14"\r\n- Tom-toms : 12" x 8"\r\n- Tom basse 14" x 14"\r\n- Grosse caisse : 18" x 14"\r\n- caisse claire bois : 14" x 5,5"\r\n- Support simple tom sur grosse caisse', 629, 'En stock', 'Batterie'),
(51, 'Eagletone  Saxophone alto étude\r\nDARK HIGHWAY', 'Un Saxophone destiné aux musiciens à la recherche d''un instrument leur permettant de développer leur propre personnalité grâce à un Timbre riche.\r\n\r\nLe Saxophone Eagletone Highway a été pensé, conçu et fabriqué pour les musiciens à la recherche d''un instrument leur permettant de développer leur propre personnalité grâce à un Timbre riche.\r\n\r\nSon faible poids et son ergonomie optimisée permettent aux saxophonistes une prise en main facile et un confort de jeu idéal pour un plaisir optimal. D''une justesse parfaite et une réponse précise aussi bien dans les registres graves qu''aigus, sa fabrication robuste sera garante d''une fidélité irréprochable pendant de longues heures de jeu et de longues années de pratique.\r\nCaractéristiques techniques :\r\n\r\n- FA# aigu\r\n- Garde sur la clé FA# côté\r\n- Support de pouce en métal\r\n- Tampons cuir, résonateurs métal\r\n- Finition noire\r\n- Livré en étui sac à dos, poche partitions, poche accessoires\r\n- Avec bec, Ligature et couvre-bec, stick de graisse\r\n- Cordon rembourré "confort"', 699, 'En stock', 'Saxophone'),
(52, 'Keilwerth Saxophone alto professionnel\r\nJK2400-5B-0 - SX90R - VERNI NOIR', 'Les saxophones nickelés noir SX90R ont mis la barre haut en termes de qualité et de performance. \r\nLe corps recouvert de nickel noir est agrémenté de clés vernies et d’une subtile gravure réalisée à la main pour offrir une esthétique et un son inimitables. \r\nLe Timbre chaud et expressif, résonne pleinement et clairement, ce qui permet à chaque saxophoniste de créer sa propre identité et sa propre voix.\r\nTonalité :Mib\r\nGamme : Sib grave à Fa# aigu\r\nMatériau : laiton\r\nBouton de clés : nacre\r\nClés de côté : réglables\r\nTampons : cuir Pisoni\r\nRésonateurs : métal\r\nFinition : nickelé noir\r\nFinition des clés : verni\r\nGravure : manuelle\r\nCheminées : étirées avec anneaux soudés à la main', 3699, 'En stock', 'Saxophone'),
(61, 'Eagletone Violon acoustique - Violon 1/2\r\nRIMINI 1/2', 'Conçue et préparée par un luthier, la gamme de violons Eagletone Rimini se démarque par une qualité de fabrication irréprochable et inégalable dans cette gamme de prix.\r\n\r\nCe violon est entièrement fabriqué à la main. Monté avec touche, chevilles et cordier en ébène, le vernis fait main est léger et de haute qualité et contribue à améliorer la qualité de la tonalité et la précision de cet instrument.\r\n\r\nIl est livré complet et prêt à jouer, en étui avec archet et colophane.\r\nCaractéristiques techniques :\r\n\r\n- Violon 1/2\r\n- Table : Épicéa\r\n- Fond, éclisses, manche et tête : Érable\r\n- Touche : Ébène\r\n- Chevilles : Ébène\r\n- Cordier : Ébène\r\n- Verni à la main\r\n- Livré en étui avec archet et colophane', 130, 'En stock', 'Violon'),
(71, 'Eagletone Trompette - Trompette de poche\r\nPOCKET ROAD', 'Cette Trompette de poche s''adresse tant aux trompettistes débutants qu''aux plus confirmés. Sa taille en fait un instrument au look particulier et au Timbre spécifique. Livrée en étui.\r\n\r\nLa gamme Eagletone ROAD propose un large choix d’instruments à vent, bois et cuivres, destinés aux musiciens apprentis, aux élèves de conservatoire ou d’école de musique et à tous les passionnés de musique au budget serré. Les instruments sont sélectionnés avec soin par nos spécialistes pour un prélude en toute tranquillité.\r\n\r\nLa Trompette de poche Eagletone POCKET ROAD s''adresse tant aux trompettistes débutants qu''aux plus confirmés. Sa taille en fait un instrument au look particulier et au Timbre spécifique. Elle satisfera aussi bien le tout jeune musicien qui pourra la prendre en main plus facilement qu''une Trompette que l''amateur qui l''emportera partout avec lui.\r\n\r\nCaractéristiques techniques :\r\n\r\n- En Sib\r\n- Finition vernie\r\n- Perce 11.8 mm\r\n- Pavillon 93 mm\r\n- Livrée en étui avec une embouchure', 189, 'Pas disponible', 'Trompette'),
(72, 'Jupiter Etude - Trompette Sib étude\r\nJTR 408L "LES ESSENTIELS"', 'Le meilleur du savoir-faire de Jupiter au service des élèves.\r\n\r\nLe meilleur du savoir-faire de Jupiter au service des élèves, parce que le premier instrument du débutant sera le plus important pour lui et que la qualité sera déterminante pour l’avenir du musicien en herbe. \r\nEquipé d’un outil de qualité médiocre, le débutant se décourage et abandonne. C’est conscient de ce point que Jupiter a conçu « Les Essentiels », une ligne d’instruments d’étude qui bénéficie du meilleur du savoir-faire de Jupiter à un prix s’adaptant aux budgets les plus serrés. Les Essentiels sont fabriqués dans la pure éthique qui caractérise l’excellence de Jupiter : longévité, fiabilité, technologie, précision.\r\n\r\nVoici une Trompette d''étude conçue dans l’exigence. De facture exemplaire pour une plus grande longévité, ses qualités sont indéniables : pistons en alliage inoxydable, bonne facilité d''émission, justesse et équilibre sonore irréprochables. Sa branche d''embouchure et sa coulisse d’accord sont en cuivre rose pour une sonorité ronde et chaleureuse. Livrée en étui sac à dos.', 520, 'En stock', 'Trompette'),
(81, 'Yoman Djembé\r\nPETIT MODELE PROFESSIONNEL', 'Fabriqué artisanalement au Ghana dans la plus pure tradition, ce djembé est une merveille de légèreté. L''idéal pour les enfants débutants.\r\n\r\nLe bois employé pour ce djembé est appelé "Tunebois". Celui-ci délivre un son chaud et puissant tout en étant très léger pour un transport plus facile. \r\n\r\nUne gorge spécialement sculptée dans le bois entre le pied et le corps garantit un maintien rectiligne du fer de montage inférieur, \r\nassurant ainsi une parfaite tension de la peau sur une plus longue durée. \r\nLa peau de chèvre, quant à elle, est montée de manière traditionnelle avec un cordage professionnel appelé "drisse pré étirée".\r\n\r\nCe modèle ravira tous les musiciens qui recherchent à la fois un instrument professionnel, léger à un prix très étudié et ce, sans compromis.', 59, 'En stock', 'Tambour'),
(82, 'Toca Djembé\r\nFREESTYLE COLORSOUND 7" (~17,7CM) X 12" (~30,5 CM) - METALLIC INDIGO', '- Fût en fibre synthétique\r\n- Ultra léger\r\n- Peau imperméable ultra-résistante\r\n- Caoutchouc de protection anti-dérapant\r\n- taille 7"', 40, 'En stock', 'Tambour');

-- --------------------------------------------------------

--
-- Structure de la table `t_category`
--

CREATE TABLE IF NOT EXISTS `t_category` (
`cat_id` int(100) NOT NULL,
  `cat_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `t_category`
--

INSERT INTO `t_category` (`cat_id`, `cat_name`) VALUES
(1, 'Bass'),
(2, 'Guitare'),
(3, 'Piano'),
(4, 'Batterie'),
(5, 'Saxophone'),
(6, 'Violon'),
(7, 'Trompette'),
(8, 'Tambour');

-- --------------------------------------------------------

--
-- Structure de la table `t_user`
--

CREATE TABLE IF NOT EXISTS `t_user` (
`usr_id` int(11) NOT NULL,
  `usr_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `usr_password` varchar(88) COLLATE utf8_unicode_ci NOT NULL,
  `usr_salt` varchar(23) COLLATE utf8_unicode_ci NOT NULL,
  `usr_role` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `t_user`
--

INSERT INTO `t_user` (`usr_id`, `usr_name`, `usr_password`, `usr_salt`, `usr_role`) VALUES
(1, 'JohnDoe', 'L2nNR5hIcinaJkKR+j4baYaZjcHS0c3WX2gjYF6Tmgl1Bs+C9Qbr+69X8eQwXDvw0vp73PrcSeT0bGEW5+T2hA==', 'YcM=A$nsYzkyeDVjEUa7W9K', 'ROLE_USER'),
(2, 'Flo', 'z7Nu+loGMf0rXbxLTrek4cQKRlLh+r85vb33q9ry4EoO23WjG2gMxfa7ST/8v1Gr1CJBEg7gdsOy4jRt3UzCVQ==', '3a05182581cc6337e097532', 'ROLE_ADMIN'),
(3, 'JohnDoe', 'M8NKJst3m4entWrQn6aCKmRammm+56XVQAjLtZy4FfepSDG/iTrVi7KRHZUbfXyz6HcJEOs6U8medE4IA8lANA==', 'c6d65858e16137ff61e381f', 'ROLE_USER');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `t_article`
--
ALTER TABLE `t_article`
 ADD PRIMARY KEY (`art_id`);

--
-- Index pour la table `t_category`
--
ALTER TABLE `t_category`
 ADD PRIMARY KEY (`cat_id`);

--
-- Index pour la table `t_user`
--
ALTER TABLE `t_user`
 ADD PRIMARY KEY (`usr_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `t_article`
--
ALTER TABLE `t_article`
MODIFY `art_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT pour la table `t_category`
--
ALTER TABLE `t_category`
MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `t_user`
--
ALTER TABLE `t_user`
MODIFY `usr_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
