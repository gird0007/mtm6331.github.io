-- Adminer 4.2.6-dev MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP DATABASE IF EXISTS `seussology`;
CREATE DATABASE `seussology` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `seussology`;

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_title` varchar(100) NOT NULL,
  `book_title_sort` varchar(100) DEFAULT NULL,
  `book_year` year(4) NOT NULL,
  `book_description` text NOT NULL,
  `book_pages` int(2) unsigned DEFAULT NULL,
  `book_image` varchar(150) DEFAULT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `books` (`id`, `book_title`, `book_title_sort`, `book_year`, `book_description`, `book_pages`, `book_image`, `category_id`) VALUES
(1,	'And to Think That I Saw It on Mulberry Street',	'And to Think That I Saw It on Mulberry Street',	'1937',	'Marco watches the sight and sounds of people and vehicles traveling along Mulberry Street and dreams up an elaborate story to tell to his father at the end of his walk.',	40,	'http://www.seussville.com/media/assets/all-book-covers/1.jpg',	2),
(2,	'The 500 Hats of Bartholomew Cubbins',	'Five Hundred Hats of Bartholomew Cubbins',	'1938',	'In the kingdom of Didd, King Derwin is riding through a street past Bartholomew Cubbins, a poor boy in the market. Bartholomew removes his hat, according to the laws, but another hat mysteriously appears; when he attempts to remove this one too, another one appears again, and this continues, even as he removes more and more hats, each growing in extravagance and beauty.',	56,	'http://www.seussville.com/media/assets/all-book-covers/29.jpg',	2),
(3,	'The King\'s Stilts',	'King\'s Stilts',	'1939',	'The story of King Bertram of Binn, who dedicates himself to safeguarding his kingdom, which has a precarious existence. It is surrounded by water, which is held back from flooding the land by a ring of dike trees, which are in turn subject to attack from flocks of nizzards. To protect the kingdom, a legion of Patrol Cats is organized to keep the nizzards at bay, and King Bertram sees to their care personally.',	56,	'http://www.seussville.com/media/assets/all-book-covers/36.jpg',	2),
(4,	'Horton Hatches the Egg',	'Horton Hatches the Egg',	'1940',	'An elephant named Horton is convinced by an irresponsible bird named Mayzie to sit on her egg while she takes a short break, which proves to last for months.',	64,	'http://www.seussville.com/media/assets/all-book-covers/10.jpg',	2),
(5,	'McElligot\'s Pool',	'McElligot\'s Pool',	'1947',	'A Caldecott Honor Book. A boy named Marco is ridiculed for fishing in a small, polluted pool, and tries to justify himself by imagining the fish he might catch.',	64,	'http://www.seussville.com/media/assets/all-book-covers/21.jpg',	2),
(6,	'Thidwick the Big-Hearted Moose',	'Thidwick the Big-Hearted Moose',	'1948',	'Thidwick, a moose who lives in a herd \"about sixty or more\", accepts a bug living on his antlers for free, who tells a spider of the free housing, and both accept a \"Zinn-a-zu\" bird, and this leads to a whole host of freeloaders taking up residence.',	48,	'http://www.seussville.com/media/assets/all-book-covers/42.jpg',	2),
(7,	'Bartholomew and the Oobleck',	'Bartholomew and the Oobleck',	'1949',	'A Caldecott Honor Book. Bartholomew must rescue his kingdom from a sticky substance called oobleck. ',	56,	'http://www.seussville.com/media/assets/all-book-covers/2.jpg',	2),
(8,	'If I Ran the Zoo',	'If I Ran the Zoo',	'1950',	'Gerald McGrew visits a zoo and finds that the animals are \"not good enough\" and describes how he would run the zoo. He would let all of the current animals free and find new, more bizarre and exotic ones.',	64,	'http://www.seussville.com/media/assets/all-book-covers/19.jpg',	2),
(11,	'Yertle the Turtle and Other Stories',	'Yertle the Turtle and Other Stories',	'1950',	'Unsatisfied with the stone that serves as his throne, the king turtle commands the other turtles to stack themselves beneath him so that he can see further and expand his kingdom.',	96,	'http://www.seussville.com/media/assets/all-book-covers/43.jpg',	2),
(12,	'Scrambled Eggs Super!',	'Scrambled Eggs Super!',	'1953',	'A young boy named Peter T. Hooper spins a tale of an incredible meal he created by harvesting the eggs of fantastically exotic birds.',	64,	'http://www.seussville.com/media/assets/all-book-covers/28.jpg',	2),
(13,	'Horton Hears a Who!',	'Horton Hears a Who!',	'1954',	'Horton the Elephant of the Jungle of Nool hears a small speck of dust talking to him. The speck of dust is actually a tiny planet, home to a city called Who-ville, inhabited by microscopic-sized inhabitants known as Whos and led by a character known as the Mayor.',	72,	'http://www.seussville.com/media/assets/all-book-covers/11.jpg',	2),
(14,	'On Beyond Zebra!',	'On Beyond Zebra!',	'1955',	'The young narrator, not content with the confines of the ordinary alphabet, invents additional letters beyond Z, with a fantastic creature corresponding to each new letter.',	72,	'http://www.seussville.com/media/assets/all-book-covers/26.jpg',	2),
(15,	'If I Ran the Circus',	'If I Ran the Circus',	'1956',	'Behind Mr. Sneelock\'s ramshackle store, there\'s an empty lot. Little Morris McGurk is convinced that if he could just clear out the rusty cans, the dead tree, and the old cars, nothing would prevent him from using the lot for the amazing, world-beating, Circus McGurkus.',	64,	'http://www.seussville.com/media/assets/all-book-covers/18.jpg',	2),
(16,	'The Cat in the Hat',	'Cat in the Hat',	'1957',	'The Cat in the Hat brings his companions, Thing One and Thing Two, to a household of two young children one rainy day. Chaos ensues while the children wonder how they are going to explain what happens to their mother.',	72,	'http://www.seussville.com/media/assets/all-book-covers/31.jpg',	1),
(17,	'How the Grinch Stole Christmas!',	'How the Grinch Stole Christmas!',	'1957',	'The Grinch, a bitter, cave-dwelling creature tries to steal everything related to Christmas by impersonating Santa Claus.',	64,	'http://www.seussville.com/media/assets/all-book-covers/12.jpg',	2),
(18,	'The Cat in the Hat Comes Back',	'Cat in the Hat Comes Back',	'1958',	'The Cat in the Hat returns and while he leaves Thing One and Thing Two at home, he does bring along Little Cat A nested inside his hat. Little Cat A doffs his hat to reveal Little Cat B, who in turn reveals C, and so on down to the microscopic Little Cat Z. Together they try to get rid of a pink ring that has spread from the bathtub to the dress, to the wall, into some shoes, and finally out onto the snow where they work to get rid of it.',	72,	'http://www.seussville.com/media/assets/all-book-covers/32.jpg',	1),
(19,	'Happy Birthday to You!',	'Happy Birthday to You!',	'1959',	'Deals with a fantastic land, called Katroo, where the Birthday Bird throws everyone an amazing party on their special day.',	64,	'http://www.seussville.com/media/assets/all-book-covers/8.jpg',	2),
(20,	'One Fish Two Fish Red Fish Blue Fish',	'One Fish Two Fish Red Fish Blue Fish',	'1960',	'A simple rhyming book for learner readers, that has a freewheeling plot about a boy and a girl, and the many amazing creatures they have for friends and pets.',	72,	'http://www.seussville.com/media/assets/all-book-covers/27.jpg',	1),
(21,	'Green Eggs and Ham',	'Green Eggs and Ham',	'1960',	'Sam-I-am consistently pesters an unnamed character (who is also the narrator) to try green eggs and ham. ',	72,	'http://www.seussville.com/media/assets/all-book-covers/7.jpg',	1),
(22,	'The Sneetches and Other Stories',	'Sneetches and Other Stories',	'1961',	'Because the star-bellied sneetches are being prejudicial to the plain-bellied Sneetches, a \"fix-it-up chappie\" named Sylvester McMonkey McBean appears and offers the Sneetches without stars a chance to have them by going through his Star-On Machine.',	72,	'http://www.seussville.com/media/assets/all-book-covers/40.jpg',	2),
(26,	'Dr. Seuss\'s Sleep Book',	'Sleep Book',	'1962',	'A small bug yawn spreads contagiously and though various creatures, including the Foona Lagoona Baboona, the Collapsable Frink, the Chippendale Mupp, The Offt, and the Krandles.',	64,	'http://www.seussville.com/media/assets/all-book-covers/5.jpg',	2),
(27,	'Dr. Seuss\'s ABC',	'ABC',	'1963',	'An alphabet book which features many strange creatures from the Aunt Annie\'s Alligator to the Zizzer-Zazzer-Zuzz.',	72,	'http://www.seussville.com/media/assets/all-book-covers/4.jpg',	1),
(28,	'Hop on Pop',	'Hop on Pop',	'1963',	'Hop on Pop provides simple rhymes to help beginner reading, such as a character named Pat who sits on a hat, a cat, a bat and must not sit on that (which is a cactus).',	72,	'http://www.seussville.com/media/assets/all-book-covers/9.jpg',	1),
(29,	'Fox in Socks',	'Fox in Socks',	'1965',	'Mr. Fox challenges Mr. Knox with rhyming tongue-twisters, which begins to get on Knox\'s nerves.',	72,	'http://www.seussville.com/media/assets/all-book-covers/6.jpg',	1),
(30,	'I Had Trouble in Getting to Solla Sollew',	'I Had Trouble in Getting to Solla Sollew',	'1965',	'A tale of a young person who discovers the \"troubles\" of life and wishes to escape them.',	72,	'http://www.seussville.com/media/assets/all-book-covers/17.jpg',	2),
(31,	'The Foot Book',	'Foot Book',	'1968',	'Introduces many different creatures with different feet.',	36,	'http://www.seussville.com/media/assets/all-book-covers/35.jpg',	1),
(32,	'I Can Lick 30 Tigers Today! and Other Stories',	'I Can Lick 30 Tigers Today! and Other Stories',	'1969',	'The title story concerns a boy who brags that he can fight 30 tigers and win.',	72,	'http://www.seussville.com/media/assets/all-book-covers/15.jpg',	2),
(35,	'Mr. Brown Can Moo! Can You?: Dr. Seuss\'s Book of Wonderful Noises!',	'Mr. Brown Can Moo! Can You?: Dr. Seuss\'s Book of Wonderful Noises!',	'1970',	'The book shows the sounds \"Mr. Brown\" can make, such as a cow\'s \"moo\", a frying pan\'s \"sizzle\", and a hippo\'s \"grum\".',	36,	'http://www.seussville.com/media/assets/all-book-covers/22.jpg',	1),
(36,	'The Lorax',	'Lorax',	'1971',	'The Lorax chronicles the plight of the environment and the Lorax (a mossy, bossy man-like creature resembling an emperor tamarin), who speaks for the trees against the greedy Once-ler.',	72,	'http://www.seussville.com/media/assets/all-book-covers/37.jpg',	2),
(37,	'Marvin K. Mooney Will You Please Go Now!',	'Marvin K. Mooney Will You Please Go Now!',	'1972',	'Marvin K. Mooney is asked to leave in many ways.',	36,	'http://www.seussville.com/media/assets/all-book-covers/20.jpg',	1),
(38,	'Did I Ever Tell You How Lucky You Are?',	'Did I Ever Tell You How Lucky You Are?',	'1973',	'Discusses an amusing litany of terrible predicaments which could befall a person, with the repeated admonishment that \"you\'re really quite lucky\".',	64,	'http://www.seussville.com/media/assets/all-book-covers/3.jpg',	2),
(39,	'The Shape of Me and Other Stuff',	'Shape of Me and Other Stuff',	'1973',	'Explores the adventures of two kids and their journey to learn about all the shapes and sizes that make up our world.',	36,	'http://www.seussville.com/media/assets/all-book-covers/39.jpg',	1),
(40,	'There\'s a Wocket in My Pocket!',	'There\'s a Wocket in My Pocket!',	'1974',	'A little boy talks about what strange creatures live in his house, such as the Yeps on the steps, the Nooth Grush on his toothbrush, the Yottle in the bottle and the Jertain in the curtain.',	36,	'http://www.seussville.com/media/assets/all-book-covers/41.jpg',	1),
(41,	'Oh, the Thinks You Can Think!',	'Oh, the Thinks You Can Think!',	'1975',	'About the many amazing \'thinks\' one can think and the endless possibilities and dreams that imagination can create.',	48,	'http://www.seussville.com/media/assets/all-book-covers/25.jpg',	1),
(42,	'I Can Read with My Eyes Shut!',	'I Can Read with My Eyes Shut!',	'1978',	'The Cat in the Hat shows a Young Cat the fun he can get out of reading.',	48,	'http://www.seussville.com/media/assets/all-book-covers/16.jpg',	1),
(43,	'Oh Say Can You Say?',	'Oh Say Can You Say?',	'1979',	'A collection of 25 tongue-twisters such as \"Oh my brothers! Oh my sisters! These are Terrible Tongue Twisters!\"',	48,	'http://www.seussville.com/media/assets/all-book-covers/23.jpg',	1),
(44,	'Hunches in Bunches',	'Hunches in Bunches',	'1982',	'A boy is approached by numerous strange creatures with enormous gloved hats on their heads. Each \"hunch\" points out a different possible course of action with some even contradicting themselves.',	48,	'http://www.seussville.com/media/assets/all-book-covers/13.jpg',	2),
(45,	'The Butter Battle Book',	'Butter Battle Book',	'1984',	'The conflict between the Yooks and the Zooks over which side of bread to spread butter on leads to an arms race, each competing to make bigger and nastier weapons to outdo the other, which results in the threat of mutual assured destruction.',	56,	'http://www.seussville.com/media/assets/all-book-covers/30.jpg',	2),
(46,	'You\'re Only Old Once!',	'You\'re Only Old Once!',	'1986',	'An old man journeys through a clinic and sees its inefficiency.',	56,	'http://www.seussville.com/media/assets/all-book-covers/44.jpg',	2),
(47,	'Oh, the Places You\'ll Go!',	'Oh, the Places You\'ll Go!',	'1990',	'The book concerns the journey of life and its challenges.',	56,	'http://www.seussville.com/media/assets/all-book-covers/24.jpg',	2);

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1,	'Beginner Books'),
(2,	'Big Books'),
(3,	'Short Stories');

DROP TABLE IF EXISTS `quotes`;
CREATE TABLE `quotes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quote` text NOT NULL,
  `book_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `quotes_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `quotes` (`id`, `quote`, `book_id`) VALUES
(1,	'Stop telling such outlandish tales. Stop turning minnows into whales.',	1),
(2,	'For I had a story that no one could beat! And to think that I saw it on Mulberry Street!',	1),
(3,	'Dig a hole five furlongs deep, Down to where the night snakes creep, Mix and mold the mystic mud, Malber, Balber, Tidder, Tudd.”',	2),
(4,	'They only say it just “happened to happen” and was not very likely to happen again.',	2),
(5,	'If he wants to have a bit of fun… sure!… let him have it!”',	3),
(6,	'I meant what I said And I said what I meant… An elephant’s faithful One hundred percent!',	4),
(7,	'If a fellow is patient, he might get his wish!',	5),
(8,	'There’s room there to spare, and I’m happy to share!',	6),
(9,	'I think I could find some beasts of a much more un-usual kind',	8),
(10,	'Why, this boy never sleeps! No keeper before ever kept what he keeps!',	8),
(14,	'But down at the bottom we, too, should have rights.',	11),
(15,	'And so I decided that, just for a change, I’d scramble a new kind of egg on the range.',	12),
(16,	'So, open your mouth, lad! For every voice counts!',	13),
(17,	'A person’s a person no matter how small.',	13),
(18,	'It’s high time you were shown that you really don’t know all there is to be known.',	14),
(19,	'The World’s Greatest Show on the face of the earth',	15),
(20,	'Without a good wink-hood a Hoodwink can’t wink good',	15),
(22,	'It is fun to have fun but you have to know how',	16),
(24,	'I know it is wet and the sun is not sunny. But we can have a lot of good fun that is funny. ',	16),
(25,	'Maybe Christmas, he thought, doesn’t come from a store',	17),
(26,	'I MUST find some way to stop Christmas from coming!',	17),
(27,	'Now, don’t ask me what Voom is. I never will know.',	18),
(30,	'If you ever have spots, now and then, I will be very happy to come here again.',	18),
(31,	'From here to there, funny things are everywhere.',	20),
(33,	'Today is gone. Today was fun. Tomorrow is another one.',	20),
(35,	'I would not like them here or there. I would not like them anywhere.',	21),
(36,	'Try them! Try them! And you may. Try them and you may, I say.',	21),
(37,	'You might think such a thing wouldn’t matter at all.',	22),
(44,	'It just take one yawn to start other yawns off.',	26),
(45,	'Jerry Jordan’s jelly jar and jam begin that way.',	27),
(46,	'I am a Zizzer-Zazzer-Zuzz as you can plainly see.',	27),
(47,	'Dad is sad. Very, Very sad. He had a bad day. What a day Dad had!',	28),
(48,	'FATHER MOTHER SISTER BROTHER That one is my other brother.',	28),
(49,	'Who sews whose socks? Sue sews Sue’s socks.',	29),
(50,	'They call it a tweetle beetle puddle paddle battle.',	29),
(51,	'Now my troubles are going to have troubles with me!',	30),
(53,	'Where they never have troubles! At least, very few.',	30),
(55,	'Oh, how many feet you meet!',	31),
(56,	'Feet in the morning feet at night',	31),
(57,	'I’ll beat you up right after lunch.',	32),
(60,	'And it’s very, very hard to make a noise like that.',	35),
(63,	'Unless someone like you cares a whole awful lot, nothing is going to get better. It’s not.',	36),
(65,	'You can go by foot. You can go by cow.',	37),
(66,	'Just go. Go. GO! I don’t care how.',	37),
(68,	'Some people are much more… oh, ever so much more… oh, muchly much-much more unlucky than you!',	38),
(69,	'Just tell yourself, Duckie, you’re really quite lucky!',	38),
(70,	'I say, ‘HOORAY for the shapes we’re in!’',	39),
(71,	'The shape of you the shape of me the shape of everything I see',	39),
(73,	'Sometimes I feel quite certain there’s a Jertain in the curtain.',	40),
(74,	'I don’t care if you believe it. That’s the kind of house I live in. And I hope we never leave it.',	40),
(75,	'Oh, the things you can think up if only you try!',	41),
(76,	'Think left and think right and think low and think high. ',	41),
(78,	'That’s why I tell you to keep your eyes wide. Keep them wide open… at least on one side.',	42),
(79,	'If you keep your eyes open enough, oh, the stuff you will learn! The most wonderful stuff!',	42),
(82,	'When the drops stop dropping then the storm starts stopping.',	43),
(83,	'The words in this book ar all phooey.',	43),
(84,	'We argued and we barg-barged! We decided what to do.',	44),
(85,	'My trouble was I had a mind. But I couldn’t make it up.',	44),
(86,	'I’ll butter-side-up you to small smithereens!',	45),
(87,	'Every Book eats his bread with the butter side down!',	45),
(88,	'Just why are you here? You’re not feeling your best',	46),
(89,	'You’re in pretty good shape for the shape you are in!',	46),
(90,	'And will you succeed? Yes! You will indeed!',	47),
(92,	'You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose.',	47),
(94,	'I’m sorry to say so, but, sadly, it’s true that Bang-ups and Hang-ups can happen to you.',	47);

-- 2018-11-05 09:22:46
