-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 29, 2021 at 08:44 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ProjectMilestone2`
--

-- --------------------------------------------------------

--
-- Table structure for table `gives`
--

CREATE TABLE `gives` (
  `user_id` varchar(7) NOT NULL,
  `recipe_id` varchar(9) NOT NULL,
  `contributor_id` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gives`
--

INSERT INTO `gives` (`user_id`, `recipe_id`, `contributor_id`) VALUES
('39547', '341357', '107135'),
('322548', '193565', '125640'),
('16140', '373726', '1260758'),
('373020', '432937', '13029'),
('322548', '87985', '131500'),
('464080', '210678', '165623'),
('38532', '305687', '166642'),
('284897', '212417', '178976'),
('373020', '315604', '237715'),
('52543', '145799', '251608'),
('464080', '17952', '25467'),
('1371084', '16001', '26587'),
('178696', '25959', '28846'),
('103380', '207931', '291306'),
('26587', '93722', '30534'),
('52543', '496426', '329769'),
('143318', '337371', '373020'),
('107135', '455201', '37449'),
('166642', '25961', '38532'),
('38532', '114126', '42337'),
('166642', '346191', '433068'),
('373020', '346191', '433068'),
('42337', '342263', '464080'),
('103380', '100290', '50969'),
('8688', '42657', '52381'),
('103380', '73217', '52543'),
('464080', '131563', '52543'),
('50969', '131563', '52543'),
('40135', '60929', '60031'),
('143318', '97533', '65056');

-- --------------------------------------------------------

--
-- Table structure for table `has`
--

CREATE TABLE `has` (
  `user_id` varchar(7) NOT NULL,
  `recipe_id` varchar(9) NOT NULL,
  `u` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `has`
--

INSERT INTO `has` (`user_id`, `recipe_id`, `u`) VALUES
('103380', '100290', '14140'),
('103380', '207931', '14140'),
('103380', '73217', '14140'),
('107135', '455201', '108'),
('1371084', '16001', '23570'),
('143318', '337371', '1737'),
('143318', '97533', '1737'),
('16140', '1260758', '5237'),
('166642', '25961', '236'),
('166642', '346191', '236'),
('178696', '25959', '25025'),
('26587', '93722', '241'),
('284897', '212417', '903'),
('322548', '193565', '471'),
('322548', '87985', '471'),
('373020', '315604', '1236'),
('373020', '346191', '1236'),
('373020', '432937', '1236'),
('38532', '114126', '8612'),
('38532', '305687', '8612'),
('39547', '341357', '5702'),
('40135', '60929', '10813'),
('42337', '342263', '185'),
('464080', '131563', '498'),
('464080', '17952', '498'),
('464080', '210678', '498'),
('50969', '131563', '830'),
('52543', '145799', '110'),
('52543', '496426', '110'),
('8688', '42657', '220'),
('user_id', 'recipe_id', 'u');

-- --------------------------------------------------------

--
-- Table structure for table `hashistory`
--

CREATE TABLE `hashistory` (
  `contributor_id` varchar(14) NOT NULL,
  `u` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hashistory`
--

INSERT INTO `hashistory` (`contributor_id`, `u`) VALUES
('103380', '14140'),
('107135', '108'),
('1072593', '736'),
('125640', '919'),
('1260758', '14610'),
('128473', '208'),
('13029', '11866'),
('131500', '6930'),
('1371084', '23570'),
('143318', '1737'),
('16140', '5237'),
('165623', '3534'),
('166642', '236'),
('178696', '25025'),
('209747', '504'),
('212417', '2998'),
('237715', '6064'),
('251608', '14513'),
('251917', '1217'),
('25467', '4266'),
('26587', '241'),
('27643', '315'),
('284897', '903'),
('28846', '6874'),
('291306', '3999'),
('30534', '508'),
('308961', '12169'),
('322548', '471'),
('329769', '356'),
('34146', '14245'),
('373020', '1236'),
('37449', '275'),
('38532', '8612'),
('39547', '5702'),
('40135', '10813'),
('42337', '185'),
('433068', '24039'),
('464080', '498'),
('50969', '830'),
('52381', '4460'),
('52543', '110'),
('53959', '1504'),
('60031', '4549'),
('65056', '231'),
('73836', '2990'),
('860079', '476'),
('8688', '220'),
('contributor_id', 'u');

-- --------------------------------------------------------

--
-- Table structure for table `ingreds_tab`
--

CREATE TABLE `ingreds_tab` (
  `recipe_id` varchar(9) NOT NULL,
  `ingredient` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ingreds_tab`
--

INSERT INTO `ingreds_tab` (`recipe_id`, `ingredient`) VALUES
('100290', 'cheese'),
('100290', 'cooked ham'),
('100290', 'cooking spray'),
('100290', 'eggs'),
('100290', 'green chilies'),
('100290', 'large refrigerated biscuits'),
('100290', 'margarine'),
('100290', 'pepper'),
('100290', 'salt'),
('100290', 'salt and pepper'),
('10526', ' beef'),
('10526', 'chicken'),
('114126', 'butter'),
('114126', 'dark brown sugar'),
('114126', 'dry active yeast'),
('114126', 'egg'),
('114126', 'flour'),
('114126', 'milk'),
('114126', 'rye flour'),
('114126', 'salt'),
('114126', 'shortening'),
('114126', 'warm water'),
('114126', 'water'),
('114126', 'white flour'),
('11673', ''),
('11740', ''),
('12243', 'brown bread'),
('12243', 'buttermilk'),
('12243', 'carrots'),
('12243', 'chickpeas'),
('12243', 'curry powder'),
('12243', 'eggs'),
('12243', 'fresh gingerroot'),
('12243', 'garlic and herb seasoning'),
('12243', 'garlic cloves'),
('12243', 'ground cinnamon'),
('12243', 'ground coriander'),
('12243', 'lemon juice'),
('12243', 'macadamia nuts'),
('12243', 'onions'),
('12243', 'salt'),
('12243', 'salted butter'),
('12243', 'sunflower oil'),
('12243', 'turmeric'),
('12243', 'vegetable stock'),
('131563', 'cajun seasoning'),
('131563', 'cherry tomatoes'),
('131563', 'extra virgin olive oil'),
('131563', 'fresh parsley'),
('131563', 'pepper'),
('131563', 'pineapple chunks'),
('131563', 'red onion'),
('131563', 'salmon fillets'),
('131563', 'salt'),
('134309', 'brown sugar'),
('134309', 'butter'),
('134309', 'nuts'),
('134309', 'refrigerated crescent dinner rolls'),
('134309', 'semi-sweet chocolate chips'),
('1424', ''),
('145799', 'brown sugar'),
('145799', 'corn syrup'),
('145799', 'corned beef brisket'),
('145799', 'mustard'),
('146112', 'candy corn'),
('146112', 'chocolate frosting'),
('146112', 'miniature peanut butter cups'),
('146112', 'red decorating gel'),
('146112', 'sugar cookies'),
('156606', 'chocolate graham crackers'),
('156606', 'marshmallows'),
('156606', 'miniature chocolate chips'),
('156606', 'strawberry cream cheese'),
('16001', 'all-purpose flour'),
('16001', 'butter'),
('16001', 'powdered sugar'),
('166579', 'butter'),
('166579', 'chicken bouillon granule'),
('166579', 'cilantro'),
('166579', 'corn tortillas'),
('166579', 'fresh spinach'),
('166579', 'garlic cloves'),
('166579', 'garlic powder'),
('166579', 'lime juice'),
('166579', 'monterey jack cheese'),
('166579', 'mushroom'),
('166579', 'onion'),
('166579', 'season salt'),
('166579', 'sour cream'),
('166579', 'water'),
('166579', 'white wine'),
('178976', 'baby carrots'),
('178976', 'black pepper'),
('178976', 'butter'),
('178976', 'fresh ginger'),
('178976', 'ground cumin'),
('178976', 'kosher salt'),
('178976', 'sherry wine vinegar'),
('178976', 'soy sauce'),
('178976', 'toasted sesame oil'),
('178976', 'vegetable oil'),
('17952', 'fat-free ricotta cheese'),
('17952', 'fresh spinach leaves'),
('17952', 'lasagna noodles'),
('17952', 'lowfat mozzarella cheese'),
('17952', 'mushroom'),
('17952', 'nutmeg'),
('17952', 'red bell pepper'),
('17952', 'spaghetti sauce'),
('1814', 'ginger'),
('1814', 'lemon'),
('1814', 'pumpkin'),
('193565', 'butter'),
('193565', 'cashews'),
('193565', 'chicken broth'),
('193565', 'dry white wine'),
('193565', 'fresh lemon juice'),
('193565', 'fresh parsley'),
('193565', 'green onions'),
('193565', 'long grain brown rice'),
('193565', 'mushrooms'),
('193565', 'pepper'),
('193565', 'salt'),
('202280', 'fresh parsley'),
('202280', 'long grain brown rice'),
('202280', 'oil'),
('202280', 'onions'),
('202280', 'soy sauce'),
('207931', 'beef roast'),
('207931', 'black pepper'),
('207931', 'garlic salt'),
('207931', 'hot sauce'),
('207931', 'oil'),
('207931', 'salt'),
('207931', 'soy sauce'),
('207931', 'wine vinegar'),
('207931', 'worcestershire sauce'),
('210678', 'baking soda'),
('210678', 'buttermilk'),
('210678', 'eggs'),
('210678', 'flour'),
('210678', 'oatmeal'),
('210678', 'salt'),
('210678', 'sugar'),
('2143', ''),
('216474', 'butter'),
('216474', 'eggs'),
('216474', 'flour'),
('216474', 'milk'),
('216474', 'salt'),
('216474', 'sugar'),
('225107', 'chicken piece'),
('225107', 'five-spice powder'),
('225107', 'garlic clove'),
('225107', 'onion'),
('225107', 'peanut oil'),
('225107', 'soy sauce'),
('23195', 'angel hair pasta'),
('23195', 'boneless chicken breast halves'),
('23195', 'butter'),
('23195', 'flour'),
('23195', 'frozen peas'),
('23195', 'half-and-half'),
('23195', 'italian seasoning'),
('23195', 'parmesan cheese'),
('23195', 'salt and pepper'),
('23195', 'tomatoes'),
('2412', 'cream'),
('2412', 'ginger'),
('2412', 'milk'),
('2412', 'pumpkin'),
('251176', 'boneless skinless chicken thighs'),
('251176', 'brown rice'),
('251176', 'capers'),
('251176', 'chili peppers'),
('251176', 'dried oregano'),
('251176', 'extra virgin olive oil'),
('251176', 'fresh cilantro'),
('251176', 'onion'),
('251176', 'pimento stuffed olives'),
('251176', 'pimientos'),
('251176', 'salt'),
('251176', 'sweet paprika'),
('251176', 'tomato sauce'),
('251176', 'tomatoes'),
('251176', 'water'),
('25959', 'all-purpose flour'),
('25959', 'baking soda'),
('25959', 'crushed pineapple'),
('25959', 'dark brown sugar'),
('25959', 'egg'),
('25959', 'pineapple juice'),
('25959', 'salted butter'),
('25959', 'sweetened flaked coconut'),
('25959', 'vanilla extract'),
('25959', 'white sugar'),
('25961', 'black pepper'),
('25961', 'cayenne pepper'),
('25961', 'dry breadcrumbs'),
('25961', 'eggs'),
('25961', 'flat leaf parsley'),
('25961', 'fresh basil'),
('25961', 'garlic'),
('25961', 'ground pork'),
('25961', 'ground veal'),
('25961', 'kosher salt'),
('25961', 'lean ground beef'),
('25961', 'milk'),
('25961', 'parmesan cheese'),
('2901', ' pie'),
('3038', 'ginger'),
('3038', 'lemon'),
('3038', 'pumpkin'),
('305687', 'butter'),
('305687', 'ground cinnamon'),
('305687', 'honey'),
('305687', 'lemon juice'),
('305687', 'phyllo dough'),
('305687', 'raisins'),
('305687', 'walnuts'),
('315604', 'chicken stock'),
('315604', 'double cream'),
('315604', 'olive oil'),
('315604', 'onion'),
('315604', 'pancetta'),
('315604', 'parmesan cheese'),
('315604', 'parsnips'),
('31705', 'butter'),
('31705', 'cilantro'),
('31705', 'english cucumbers'),
('31705', 'fresh lemon juice'),
('31705', 'fresh strawberries'),
('31705', 'garlic'),
('31705', 'green onion'),
('31705', 'honey'),
('31705', 'rice wine vinegar'),
('31705', 'skinless salmon fillet'),
('31705', 'soy sauce'),
('31705', 'yellow pepper'),
('337371', 'allspice'),
('337371', 'caster sugar'),
('337371', 'cinnamon'),
('337371', 'dried apricot'),
('337371', 'dried dates'),
('337371', 'honey'),
('337371', 'nutmeg'),
('337371', 'orange zest'),
('337371', 'toasted almonds'),
('341357', '\"confectioners sugar\"'),
('341357', 'baking powder'),
('341357', 'boiling water'),
('341357', 'butter'),
('341357', 'cake flour'),
('341357', 'eggs'),
('341357', 'milk'),
('341357', 'salt'),
('341357', 'spanish peanut'),
('341357', 'sugar'),
('341357', 'vanilla'),
('342263', 'alfredo sauce'),
('342263', 'cheese ravioli'),
('342263', 'dry white wine'),
('342263', 'fresh sage'),
('342263', 'green onions'),
('342263', 'pumpkin puree'),
('342263', 'shallot'),
('346191', 'butter'),
('346191', 'cool whip'),
('346191', 'hot fudge topping'),
('346191', 'mint chocolate chip ice cream'),
('346191', 'mint oreo cookies'),
('3697', ''),
('373726', 'butter'),
('373726', 'chicken breasts'),
('373726', 'dry white wine'),
('373726', 'egg'),
('373726', 'flour'),
('373726', 'ham'),
('373726', 'heavy cream'),
('373726', 'mushroom'),
('373726', 'pepper'),
('373726', 'salt'),
('373726', 'shallot'),
('373726', 'swiss cheese'),
('373726', 'tomatoes'),
('388934', 'chickpeas'),
('388934', 'chili powder'),
('388934', 'crushed red pepper flakes'),
('388934', 'garlic powder'),
('388934', 'ground black pepper'),
('388934', 'ground cumin'),
('388934', 'olive oil'),
('388934', 'sea salt'),
('3913', ''),
('3979', ''),
('4042', ''),
('4085', ' cream'),
('4085', ' milk'),
('4085', 'pie spice'),
('411288', 'cinnamon sticks'),
('411288', 'pears'),
('411288', 'sugar'),
('411288', 'vanilla sugar'),
('411288', 'water'),
('411288', 'white wine'),
('42657', 'black pepper'),
('42657', 'feta cheese'),
('42657', 'fresh dill'),
('42657', 'garlic'),
('42657', 'mayonnaise'),
('42657', 'milk'),
('42657', 'mint'),
('42657', 'red wine vinegar'),
('42657', 'sour cream'),
('42657', 'worcestershire sauce'),
('432937', 'black pepper'),
('432937', 'canola oil'),
('432937', 'celery'),
('432937', 'iceberg lettuce'),
('432937', 'mandarin oranges'),
('432937', 'parsley'),
('432937', 'red wine vinegar'),
('432937', 'romaine lettuce'),
('432937', 'salt'),
('432937', 'sliced almonds'),
('432937', 'sugar'),
('432937', 'tabasco sauce'),
('432937', 'whole green onions'),
('4441', ''),
('451515', '\"campbells golden mushroom soup\"'),
('451515', 'all-purpose flour'),
('451515', 'bacon grease'),
('451515', 'boneless country-style ribs'),
('451515', 'ground black pepper'),
('451515', 'oregano'),
('451515', 'seasoning salt'),
('451515', 'soup mix'),
('4525', ''),
('455201', 'club soda'),
('455201', 'honey'),
('455201', 'lime'),
('455201', 'lime juice'),
('455201', 'orange'),
('455201', 'orange juice'),
('456869', 'garlic clove'),
('456869', 'habanero pepper'),
('456869', 'hot water'),
('456869', 'long-grain rice'),
('456869', 'onion'),
('456869', 'salt'),
('456869', 'vegetable oil'),
('4624', 'ginger'),
('4624', 'pumpkin'),
('4624', 'yogurt'),
('4683', 'cream'),
('4683', 'ginger'),
('4683', 'milk'),
('4683', 'pumpkin'),
('480229', 'frangelico'),
('480229', 'milk'),
('486396', 'boneless skinless chicken breasts'),
('486396', 'boneless skinless chicken thighs'),
('486396', 'button mushrooms'),
('486396', 'carrot'),
('486396', 'celery'),
('486396', 'cognac'),
('486396', 'cold water'),
('486396', 'cornstarch'),
('486396', 'dried parsley'),
('486396', 'dried thyme'),
('486396', 'dry red wine'),
('486396', 'garlic cloves'),
('486396', 'olive oil'),
('486396', 'salt & freshly ground black pepper'),
('486396', 'salt and pepper'),
('486396', 'smoked bacon'),
('486396', 'white pearl onion'),
('4882', ''),
('496426', 'black pepper'),
('496426', 'garlic cloves'),
('496426', 'greek yogurt'),
('496426', 'lamb cutlets'),
('496426', 'lemon'),
('496426', 'salt'),
('5561', ''),
('5721', ''),
('60929', 'apple'),
('60929', 'baking soda'),
('60929', 'corn syrup'),
('60929', 'egg whites'),
('60929', 'oat bran'),
('60929', 'skim milk'),
('60929', 'strawberries'),
('60929', 'sugar'),
('6179', 'cream'),
('6179', 'ginger'),
('6179', 'milk'),
('6179', 'pumpkin'),
('6206', ''),
('6304', ''),
('6355', ''),
('6410', ' pie'),
('6420', ''),
('6483', 'capers'),
('6483', 'dijon-style mustard'),
('6483', 'horseradish'),
('6483', 'mayonnaise'),
('6483', 'sour cream'),
('6483', 'sugar'),
('6483', 'white vinegar'),
('6615', 'cream'),
('6615', 'ginger'),
('6615', 'milk'),
('6615', 'pumpkin'),
('6872', ''),
('6951', 'ginger'),
('6951', 'lemon'),
('6951', 'pumpkin'),
('7067', 'ginger'),
('7067', 'lemon'),
('7067', 'pumpkin'),
('73217', 'all-purpose flour'),
('73217', 'apples'),
('73217', 'baking powder'),
('73217', 'brown sugar'),
('73217', 'corn syrup'),
('73217', 'dried cranberries'),
('73217', 'egg'),
('73217', 'egg whites'),
('73217', 'granulated sugar'),
('73217', 'ground cinnamon'),
('73217', 'low-fat yogurt'),
('73217', 'margarine'),
('73217', 'unsweetened applesauce'),
('73217', 'vanilla'),
('73217', 'vegetable oil'),
('7373', ''),
('7447', ' pie'),
('7674', 'ginger'),
('7674', 'pumpkin'),
('7674', 'yogurt'),
('7953', ''),
('8158', ''),
('8188', ''),
('8202', 'cream'),
('8202', 'ginger'),
('8202', 'milk'),
('8202', 'pumpkin'),
('824', 'ginger'),
('824', 'lemon'),
('824', 'pumpkin'),
('8400', ''),
('8500', ' beef'),
('8500', 'chicken'),
('8507', 'cream'),
('8507', 'ginger'),
('8507', 'milk'),
('8507', 'pumpkin'),
('87985', 'black pepper'),
('87985', 'cream of mushroom soup'),
('87985', 'garlic salt'),
('87985', 'ground round'),
('87985', 'mushroom pieces'),
('87985', 'onion'),
('87985', 'refrigerated crescent dinner roll'),
('89795', 'butter'),
('89795', 'cinnamon'),
('89795', 'cooking apples'),
('89795', 'dark brown sugar'),
('89795', 'egg'),
('89795', 'flour'),
('89795', 'heavy cream'),
('89795', 'hot water'),
('89795', 'nutmeg'),
('89795', 'pecans'),
('89795', 'rum'),
('89795', 'salt'),
('89795', 'sugar'),
('89795', 'vanilla'),
('89795', 'whipped cream'),
('93157', 'chicken broth'),
('93157', 'dried oregano leaves'),
('93157', 'ground black pepper'),
('93157', 'onion'),
('93157', 'pork chops'),
('93157', 'red potatoes'),
('93157', 'roasted red pepper'),
('93157', 'vegetable oil'),
('93722', 'butter'),
('93722', 'chipotle chiles in adobo'),
('93722', 'garlic'),
('9675', ''),
('97533', 'baking soda'),
('97533', 'banana'),
('97533', 'butter'),
('97533', 'eggs'),
('97533', 'milk'),
('97533', 'nuts'),
('97533', 'salt'),
('97533', 'stevia powder'),
('97533', 'vanilla'),
('97533', 'whole wheat flour'),
('97820', 'all-purpose flour'),
('97820', 'baking soda'),
('97820', 'butter'),
('97820', 'eggs'),
('97820', 'light brown sugar'),
('97820', 'light corn syrup'),
('97820', 'milk'),
('97820', 'pecans'),
('97820', 'salt'),
('97820', 'sugar'),
('97820', 'sweetened flaked coconut'),
('97820', 'unsweetened cocoa powder'),
('97820', 'vanilla extract'),
('9828', 'cream'),
('9828', 'ginger'),
('9828', 'milk'),
('9828', 'pumpkin'),
('recipe_id', 'ingredient');

-- --------------------------------------------------------

--
-- Table structure for table `ratinghistory_items`
--

CREATE TABLE `ratinghistory_items` (
  `user_id` varchar(7) DEFAULT NULL,
  `recipe_id` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ratinghistory_items`
--

INSERT INTO `ratinghistory_items` (`user_id`, `recipe_id`) VALUES
('user_id', 'recipe_id'),
('166642', '25961'),
('166642', '346191'),
('107135', '455201'),
('464080', '17952'),
('464080', '131563'),
('464080', '210678'),
('38532', '114126'),
('38532', '305687'),
('26587', '93722'),
('178696', '25959'),
('40135', '60929'),
('373020', '432937'),
('373020', '346191'),
('373020', '315604'),
('50969', '131563'),
('52543', '145799'),
('52543', '496426'),
('8688', '42657'),
('143318', '97533'),
('143318', '337371'),
('1371084', '16001'),
('322548', '193565'),
('322548', '87985'),
('284897', '212417'),
('103380', '100290'),
('103380', '73217'),
('103380', '207931'),
('42337', '342263'),
('39547', '341357'),
('16140', '1260758');

-- --------------------------------------------------------

--
-- Table structure for table `ratinghistory_ratings`
--

CREATE TABLE `ratinghistory_ratings` (
  `user_id` varchar(7) DEFAULT NULL,
  `ratings` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ratinghistory_ratings`
--

INSERT INTO `ratinghistory_ratings` (`user_id`, `ratings`) VALUES
('user_id', 'ratings'),
('166642', '5'),
('166642', '3'),
('107135', '5'),
('464080', '5'),
('464080', '5'),
('464080', '5'),
('38532', '5'),
('38532', '5'),
('26587', '4'),
('178696', '5'),
('40135', '5'),
('373020', '2'),
('373020', '5'),
('373020', '5'),
('50969', '5'),
('52543', '5'),
('52543', '4'),
('8688', '3'),
('143318', '3'),
('143318', '5'),
('1371084', '4'),
('322548', '5'),
('322548', '2'),
('284897', '5'),
('103380', '4'),
('103380', '5'),
('103380', '1'),
('42337', '5'),
('39547', '5'),
('16140', '3');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `user_id` varchar(10) NOT NULL,
  `recipe_id` varchar(9) NOT NULL,
  `submitted` varchar(8) DEFAULT NULL,
  `rating` varchar(6) DEFAULT NULL,
  `review` varchar(675) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`user_id`, `recipe_id`, `submitted`, `rating`, `review`) VALUES
('103380', '100290', '9/30/05', '4', 'Breakfast, and calzones what more can you ask for. Personally I would ask for a bit more salt but besides that it was a perfect recipe. Thanks for sharing!'),
('103380', '207931', '1/6/10', '1', 'DO NOT MAKE THIS! Dry, bad, and gross. Couldn’t recommend less. '),
('103380', '73217', '10/2/07', '5', 'I loveeee coffee cake so this recipe that has a fall twist was perfect for our company fall party. SO many people asked for the recipe!'),
('107135', '455201', '4/5/09', '5', 'This punch was super easy to make, just add all the ingredients and mix.  I served it at my bridal shower and at my wedding and it was a hit!'),
('1371084', '16001', '10/6/09', '4', 'Very good bread, only complaint is that even for shortbread it was pretty bland. Great consistency though.'),
('143318', '337371', '10/25/10', '5', 'Delish!  I only wish I\'d read the reviews before making them, so I\'d know to use WET hands to roll the balls...my hands were a sticky mess!  I\'m experimenting with goodies for Christmas gifts and these have certainly made the list.  One batch made 25 sugarplums and I rolled mine in unsweetened, shredded coconut.  Thanks for the recipe!'),
('143318', '97533', '12/11/05', '3', 'I was a little disappointed in the recipe because it was not what I thought of when I make banana bread - it was a white loaf, similar to a yeast bread, and it was not as sweet as I thought it should be.  That aside, it was a nice loaf of bread, but I think I will try a different recipe in the future.'),
('16140', '1260758', '7/20/09', '3', 'Not the best stuffed chicken breasts I have had but still pretty moist. I think the recipe could have been better with some more seasoning and butter so that it was a bit more juicy and flavorful. '),
('166642', '25961', '1/2/05', '5', 'The finished loaf was a delicious, amazing surprise!  I made this mostly out of curiosity because I had no idea how this crazy mixture of ingredients could taste like anything even vaguely resembling meatloaf.  But it does, and it even fooled my DH who flipped when I told him how it was made.  This first time I followed the directions and the list of ingredients, (except for substituting a whole grain spelt and oat flake for the Special K), but like the other reviewers I will probably add my own favorite seasonings and serve it with a creamy mushroom sauce or a spicy tomato gravy.  I can\'t wait to make it again.  I hope more people discover this fun, healthy recipe. '),
('166642', '346191', '3/28/03', '3', 'I made these for dessert for a corn beef and cabbage supper at my church.  In keeping with the St Patrick\'s Day theme, I used the mint Oreo cookies (crushed) and used green food coloring in the whipped cream for the topping.  Personally I found these to be a little too sweet for my taste but they were decorative enough for a large crowd'),
('178696', '25959', '9/13/07', '5', 'These are great little treats! I had some left over pineapple from making another recipe. My bf just loved these. Next time I may add some nutmeg, or some spice. But over all great recipe.'),
('26587', '93722', '8/2/07', '4', 'I sure do love garlic butter! This was so good, I did use a little extra garlic and it was DELISH! YUM!'),
('284897', '212417', '8/18/08', '5', 'MMMMH! I love carrots and these are the perfect amount of spicy for my family with a low spice tolerance. '),
('322548', '193565', '2/4/07', '5', 'Delicious! I am obsessed with the creaminess of this recipe. Will be making again. '),
('322548', '87985', '4/10/04', '2', 'With an ambiguous recipe name like \"it tastes like beef wellington\" I should have known something would be strange with this recipe. Would definitely recommend putting in the extra time to make beef wellington instead of doing this easy cop out. '),
('373020', '315604', '4/26/07', '5', 'Not usually one for parsnips but this soup was delicious. My family loved and ws great to sneak in some veegatbels. '),
('373020', '346191', '7/18/11', '5', 'I love ice cream cake, oreos and mint. This is simply the best combination. Perfect for a summer potluck.'),
('373020', '432937', '3/2/06', '2', 'This salad just did not combine the flavors well. It seems like mandarin oranges and these flavors would go well but they simply do not. Would not recommend.'),
('38532', '114126', '8/28/09', '5', 'LOL, I just reviewed this same recipe by another poster and stated that my favorite method of baking this bread is in my cast iron chicken fryer.  Yep, you have to watch the baking time closely, or it will dry it out, but once you get the timing just right, it\'s worth it.'),
('38532', '305687', '3/31/05', '5', 'This Baklava recipe is very good!!! I have received many wonderful comments from Turkish people who have tried it. I used a little less of the lemon grind and honey and a little more sugar, so it\'s not too lemony.'),
('39547', '341357', '1/6/09', '5', 'Simply amazing. These were a perfect appetizer for my families new years party. A super big hit!'),
('40135', '60929', '6/3/10', '5', 'These muffins were so moist and perfect for summer. Couldn’t recommend more. '),
('42337', '342263', '12/20/09', '5', 'Everybody who knows me knows my cheese, and pumpkin obsession. This combined those perfectly and was less hard than I expected.'),
('464080', '131563', '5/14/07', '5', 'The only thing I changed was to half the cajun seasoning. It was great! Creamy, just enough spice for us, and it was very easy to prepare. This is a winner! Thanks Carol!'),
('464080', '17952', '6/2/02', '5', 'This was very good. The veleveeta melts very creamily (I would never have thought to put velveeta in a lasagna!) and although I like ricotta in my lasagna, this was a great recipe for us because I wanted lasagana but we are out of ricotta! So easy too because you don\'t have to cook the noodles first. Thanks for a great idea!'),
('464080', '210678', '9/3/06', '5', 'I bought \"pop trays\" for 99cents at the supermarket and made these with lowfat vanilla yogurt - I didn\'t put enough artifical sweetener so the unsweetened OJ was a little on the bitter side - but the concept is great!!!!!  I\'m going to buy a 2nd pop tray and try all sorts of  yogurt diet variations for the long hot summer. They are extremely easy and good. '),
('50969', '131563', '4/21/10', '5', 'FIVE BIG STARS, Miss Annie!  Here is a real winner.  My husband is a salmon fisherman and brings home a lot of fish, so we are always looking for new salmon recipes.  This one is going to the top of the pile.  Extremely easy, cooked up beautifully on the grill and actually looked just like the photo!  Changes:  doubled recipe, left out lemongrass (didn\'t have) and marinated a lot longer as we like pretty heavily spiced foods.  Six hours in the marinade and it was spectacular.  Will make often. THANKS!'),
('52543', '145799', '3/17/09', '5', 'I am laughing so hard at the recipe. You are a comedian! The potatoes alone are worth their weight in gold, the best potatoes I have ever had. Of course the corned beef was amazing too. Thank you for sharing your grandmothers recipe!'),
('52543', '496426', '11/11/04', '4', 'This is a very nice recipe, that breathes the mediterrenean. I had a little problem though: my pie looked done after 20 min in surround heat, though was woobely when I took it out. I turned on bottom heat after, but when I finally took it out, the bottom still remained soggy. I will try it again with bottom heat and post an update. The taste was great though. Thanks for sharing.'),
('8688', '42657', '12/3/09', '3', 'This dressing is not super creamy and came out more chunky than I hoped. It tasted okaay but texture was super off. '),
('hcdouglas', '16001', '29/11/21', '1', 'gross af!'),
('hcdouglas', '8688', '29/11/21', '2', 'not that bad'),
('user_id', 'recipe_id', 'date', 'rating', 'review');

-- --------------------------------------------------------

--
-- Table structure for table `rating_history`
--

CREATE TABLE `rating_history` (
  `user_id` varchar(7) NOT NULL,
  `n_ratings` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rating_history`
--

INSERT INTO `rating_history` (`user_id`, `n_ratings`) VALUES
('103380', '3'),
('107135', '1'),
('1371084', '1'),
('143318', '2'),
('16140', '1'),
('166642', '2'),
('178696', '1'),
('26587', '1'),
('284897', '1'),
('322548', '2'),
('373020', '3'),
('38532', '2'),
('39547', '1'),
('40135', '1'),
('42337', '1'),
('464080', '3'),
('50969', '1'),
('52543', '2'),
('8688', '1'),
('user_id', 'n_ratings');

-- --------------------------------------------------------

--
-- Table structure for table `tab1_2`
--

CREATE TABLE `tab1_2` (
  `name` varchar(61) DEFAULT NULL,
  `id` varchar(6) NOT NULL,
  `minutes` int(11) DEFAULT NULL,
  `contributor_id` varchar(14) DEFAULT NULL,
  `submitted` varchar(9) DEFAULT NULL,
  `n_steps` int(11) DEFAULT NULL,
  `description` varchar(604) DEFAULT NULL,
  `n_ingredients` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab1_2`
--

INSERT INTO `tab1_2` (`name`, `id`, `minutes`, `contributor_id`, `submitted`, `n_steps`, `description`, `n_ingredients`) VALUES
('breakfast calzone s', '100290', 25, '50969', '9/21/04', 13, 'my chef in training (my son) and i wanted something  ‚Äúdifferent\" for breakfast and we came up with this.', '10'),
('light rye bread', '114126', 220, '42337', '3/23/05', 20, 'a light and moist bread, a good change from pumpernickel. this recipe is from my old stand by cookbook by fannie farmer. the recipe called for milk but i had buttermilk that i needed to use and it came out wonderful so you can use either one, i think you will have a better rye taste with milk, this is a very sticky dough to work with, keep your hands floured and be patient. i mixed this by hand but i\'m sure you can use your large mixer.', '12'),
('macadamia nut bobotie', '12243', 70, '16140', '10/1/01', 11, 'a vegetarian version of the traditional south african *bobotie* (a spicy mince dish with a savoury custard topping).', '19'),
('grilled cajun salmon with tomato pineapple salsa', '131563', 20, '52543', '7/29/05', 6, 'a little spice, a little salsa, a lot of flavour and its also healthy! the recipe comes courtesy of good times magazine. adjust the cajun seasoning to your own taste - if you don\'t have any, there are a number of good ones on zaar!', '9'),
('chocolate toffee crescent bars', '134309', 35, '178696', '8/22/05', 14, 'this is a pillsbury recipe that an old roommate\'s mother introduced me to.  these are, quite seriously, one of the most delicious (and horrible for you) desserts you will ever eat.  they are really easy to make and so good that i have to bring them to an event to share or i will eat the entire pan!  i can\'t believe no one has previously posted this one...', '5'),
('glazed corned beef', '145799', 185, '251608', '11/20/05', 10, 'make this your new favorite.', '4'),
('thanksgiving turkeys  cookies', '146112', 8, '251917', '11/23/05', 7, 'these are not made with real turkey, lol! my mom made these for me when i was a kid and now i am able to make these with my daughter. gotta love those family recipes! this is a fun recipe too to have your kids help you with! if you don\'t want to use peanut butter cups, my mom used to use the brach\'s chocolate covered mints (not flat ones) but the ones that were shaped like pb cups.', '5'),
('strawberry chocolate chip cheesecake s mores', '156606', 5, '53959', '2/20/06', 7, 'from keebler.com', '4'),
('granny hampton s english shortbread', '16001', 20, '26587', '12/18/01', 6, '4th generation old recipe from england', '3'),
('spinach and mushroom enchiladas with cilantro cream sauce', '166579', 35, '209747', '5/1/06', 12, 'i love these spinach enchiladas. they are just like the ones served at one of my fave restaurants! if you like spinach, you will love these. if you don\'t like spinach- you will probably find that this recipe changes your mind. (altered recipe after reviews regarding the saltiness and amount of sauce. i have not had that problem, but do not want anyone to have a bad result. please do try this and enjoy it.)', '15'),
('asian spiced roasted baby carrots', '178976', 38, '212417', '7/24/06', 6, 'the packages of the peeled baby carrots that you find the your grocery cuts back on the prep time for these babies!! a sara moulton recipe.', '10'),
('easy vegetable and cheese lasagna', '17952', 68, '25467', '1/24/02', 13, 'here\'s a lasagna recipe that you can enjoy without too much guilt. to serve on work nights, assemble the night before, pop in oven when you get home. relax, have a glass of wine, and eat in an hour!', '8'),
('rice and mushroom delight', '193565', 60, '125640', '11/2/06', 9, 'a nice side dish for your favorite meal or serves 3-5 as a vegetarian main course.', '11'),
('macrobiotic rice', '202280', 45, '322548', '12/29/06', 5, 'a macrobiotic diet means followers try to keep food as natural as possible. simple choices and simple ways of cooking. i tried this rice in cranks restaurant and later got the recipe from one of their books. although simple it is very delicious and wholesome.', '5'),
('alabama roast', '207931', 95, '291306', '1/28/07', 5, 'this is an easy and tasty roast.  it turns out very tender.  you can adjust all seasoning to your taste--the amounts listed give a very mild flavor, so if you like lots of flavor, you will want to tweak the amounts!', '9'),
('margo s oatmeal pancakes', '210678', 15, '165623', '2/11/07', 3, 'this is a really heavy pancake. we seem to be an oatmeal loving family ... anyone own any stock?', '7'),
('giant sized popovers', '216474', 70, '8688', '3/12/07', 13, 'i discovered this recipe in lee lee\'s recipe box.  the description to the recipe reads as follows: \"these giant-size popovers are made in individual containers to allow lots of room for rising.  they can be filled with creamed ham, chicken, or seafood and served as a main dish, or they can be served piping hot with plenty of butter.\"  be sure when you make these to spread the custard cups out.  these babies puff up pretty big ; )  i hope you will enjoy them!', '6'),
('chinese five spice chicken', '225107', 65, '308961', '4/28/07', 5, 'this is very quick to prepare and to later throw in the oven.', '6'),
('parmesan chicken skillet', '23195', 25, '27643', '3/24/02', 10, 'this is a really quick and tasty supper. all you\'ll need to add is a nice bread and wine.', '10'),
('easy asopao de pollo   chicken and rice stew', '251176', 80, '143318', '9/5/07', 7, 'this puerto rican one-dish chicken and rice stew is rich in flavor. from eating well magazine.', '15'),
('pineapple paradise cookies', '25959', 44, '28846', '4/22/02', 13, 'this recipe comes from mrs. fields cookie book at the request of a zaar member.', '10'),
('meatloaf haters meatloaf', '25961', 60, '38532', '4/22/02', 3, 'i hate meatloaf - dh loves it. i came up with this, modifying a recipe for meatballs, and we both love it. it doesn\'t have a sauce because it doesn\'t need it. it\'s wonderful on it\'s own. we like to roast carrots with it, and serve it with mashed potatoes and biscuits.', '13'),
('baklava mini bites', '305687', 38, '166642', '5/28/08', 20, 'these mini baklava slices are perfect for a dessert tray. recipe is from land o lakes.', '7'),
('roasted parsnip and parmesan soup', '315604', 60, '237715', '7/24/08', 7, 'from the women\'s institute book of soup that i borrowed from our local library. a slightly different parsnip soup', '7'),
('grilled salmon with strawberry salsa', '31705', 27, '34146', '6/20/02', 16, 'its strawberry season!!! my friend served this last weekend and everyone raved about it, said the flavors were wonderful. my hubby decided we should make this for company this weekend, and i thought i\'d share my neighbor\'s recipe with my friends at zaar. (i have not personally prepared this dish yet). prep time does not include 1 hour chilling time. cook time does not include the time to prepare the charcoal grill.', '12'),
('fruit and nut truffles  sugarplums', '337371', 4, '373020', '11/14/08', 4, 'this recipe is from \"making great candy\" cookbook. this is not a confectionary item, more like a fruit mince truffle.  they are delicious and remind you of christmas, a simple homemade gift idea.  if no food processor is available to you, use a large bowl and metal spoon, be sure to chop all you ingredients very small.  i like to use kitchen sheers rather than a knife for dried fruit, which can be sticky and stick to the knife.', '9'),
('peanut sticks', '341357', 50, '107135', '12/3/08', 19, 'darlene kossman said these were very good. shes right . it says oblong pieces of cake spread with frosting and rolled in crunchy chopped peanuts. sell for 5 cents each....old recipe, lol. ive made this and its a sponge like cake similar to angel food cake i tastes better after  it cools . this is probably a depression cake as it uses no oil except a little in the frosting dont worry it tastes great ,', '11'),
('cheese ravioli with pumpkin sage sauce  semi homemade', '342263', 25, '464080', '12/8/08', 9, 'fast weeknight dinner made with pre-made and fresh ingredients.  recipe from buitoni (maker of italian food items in the grocery).  they recommend serving it with crusty bread and a mixed greens salad.  this is truly fancy enough for a dinner party!!!', '7'),
('mint oreo ice cream cake', '346191', 1485, '433068', '12/30/08', 21, 'quick and simple mint ice cream cake great for special occasions. will look like you spent hours in the kitchen \r\ncook time is freeze time', '5'),
('supremes de volaille queen elizabeth  stuffed chicken breasts', '373726', 40, '1260758', '5/22/09', 17, 'something a little different to do with chicken breasts, fancy enough for company, but not too time consuming for a weeknight. i would serve with wild rice and a nice veg, maybe asparagus.', '13'),
('kid pleasing simple chickpea snack', '388934', 50, '1371084', '9/6/09', 5, 'though to a kid it may sound gross, it is really one of the tastiest snacks ever! kid tested, and approved, this is a crispy, crunchy, flavorful, and non-spicy snack that will definitely be a hit. one of my friends sent it to me and said that her whole family loved it, and so did mine! enjoy!', '8'),
('feta dressing', '42657', 10, '52381', '10/8/02', 2, 'fantastic on salads and vegetables.', '10'),
('mandarin orange and green salad', '432937', 15, '13029', '7/21/10', 6, 'the ladies at our old church always made this for dinners. when i asked for the recipe, they gave it to me on an old recipe card, written in beautiful cursive script. when reading it, i thought the mix of ingredients sounded odd, but it is absolutely delcious. it\'s a wonderful green salad that is wonderful for company. it\'s also good as a main course with a chicken breast on top. very adaptable - you can add other fruit, too. strawberries and blueberries.', '13'),
('posh   pork roast   crockpot', '451515', 315, '50969', '3/24/11', 7, 'befrore getting on with the description of this recipe, i want to thank molly53 chef#64642 for the name of this recipe.i made this recipe using country style-pork ribs (boneless),but i\'m pretty sure it could be made with a boneless pork roast or even a pork loin of the same size with equal results.if you are using the roast or pork loin,cut into 2 inch sized pieces.also, if you think there is  too much salt in the onion soup mix just use half.the recipe will serve 4 with leftovers or 6 without any.this recipe was made for a 3 quart crockpot. submited to food.com ( a.k.a. zaar ) on march 24th.,2011', '8'),
('tropical gold punch', '455201', 5, '37449', '5/5/11', 5, 'tropical gold punch is a non-alcoholic fruit punch made with orange juice, lime juice, and club soda sweetened with honey, and is popular in the south pacific islands, not to mention everywhere else!', '6'),
('brazilian pepper scented rice', '456869', 35, '860079', '5/21/11', 7, 'simple and delicious, this dish makes use of highly aromatic peppers,\r\nadding a level of sophistication to even the simplest of meals. when making this dish, use the haba√±ero pepper whole if you want less heat, and dice it if you like more heat. since haba√±ero peppers are immensely hot, you cook with them to flavor the rice, but most palates are uncomfortable eating these peppers whole.  from foodinbrazil.com', '7'),
('tracy s white trash', '480229', 5, '128473', '5/31/12', 3, 'another great drink by jane butel.  taken from hottter than hell cookbook, revised edition.', '2'),
('coq au vin  pressure cooker', '486396', 60, '1072593', '9/5/12', 22, 'an updated version that is simpler but just as good, especially if you use the cognac to add to the authentic flavors of the dish. serve it over cooked noodles or boiled potatoes.', '17'),
('lamb cutlets  mediterranean style', '496426', 20, '329769', '3/2/13', 6, 'tasty mediterranean style marinated lamb cutlet. a recipe from an advertisement is a women\'s magazine. suggested to serve with a greek salad and tzatziki for full greek style family meal for 4 people. prep time does not include the one hour marinating time required', '6'),
('double strawberry muffins', '60929', 30, '60031', '4/23/03', 12, 'these looked wonderful, not sure on the apple fiber though- will try with applesauce and post results.', '8'),
('caper sauce', '6483', 0, '39547', '3/6/00', 3, '', '7'),
('upside down apple   cranberry coffee cake', '73217', 45, '52543', '10/10/03', 11, 'an alternative to the traditional upside down pineapple cake - they\'ll come back for seconds!', '15'),
('it tastes like beef wellington', '87985', 45, '131500', '4/1/04', 8, 'this is a great dish that tastes just like beef wellington, but is much simpler and alot cheaper. i like to serve some brown or mushroom gravy on top before i serve this.', '7'),
('apple pie cake with rum butter sauce', '89795', 60, '73836', '4/23/04', 13, 'divine! cake-like texture, shaped and served like a pie.', '15'),
('pork chops with roasted peppers and potatoes', '93157', 30, '40135', '6/10/04', 11, 'campbell\'s recipe; i think it was a grocery store freebie.', '8'),
('chipotle garlic butter', '93722', 10, '30534', '6/18/04', 2, 'i love this melted on bbq grilled steak. try this spicey butter on any grilled meat, fish, poultry or vegetable. increase the amount of chipotles if you want ', '3'),
('stevia whole wheat banana bread', '97533', 80, '65056', '8/11/04', 7, 'according to www.rochestergoodfood.com, this recipe won a red ribbon at the 1987 arizona state fair. stevia is a south american herb that is virtually calorie-free and hundreds of times sweeter than table sugar. look for it at your local health food store or at trader joe\'s.', '10'),
('german chocolate sandwich cookies', '97820', 70, '103380', '8/14/04', 25, 'these are chewy chocolate cookies with coconut pecan filling.', '13');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `contributor_id` varchar(14) NOT NULL,
  `first_name` varchar(10) DEFAULT NULL,
  `last_name` varchar(9) DEFAULT NULL,
  `email_address` varchar(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`contributor_id`, `first_name`, `last_name`, `email_address`) VALUES
('103380', 'Wilson', 'Phillips', 'w.phillips@gmail.com'),
('107135', 'Rebecca', 'Stewart', 'r.stewart@gmail.com'),
('1072593', 'Stella', 'Wilson', 's.wilson@gmail.com'),
('125640', 'Preston', 'Kelly', 'p.kelly@gmail.com'),
('1260758', 'Michelle', 'Kelly', 'm.kelly@gmail.com'),
('128473', 'Nicholas', 'Gibson', 'n.gibson@gmail.com'),
('13029', 'Jasmine', 'Allen', 'j.allen@gmail.com'),
('131500', 'Rebecca', 'Morris', 'r.morris@gmail.com'),
('1371084', 'William', 'Hunt', 'w.hunt@gmail.com'),
('143318', 'Dexter', 'Russell', 'd.russell@gmail.com'),
('16140', 'Owen', 'Roberts', 'o.roberts@gmail.com'),
('165623', 'Spike', 'Morris', 's.morris@gmail.com'),
('166642', 'Melanie', 'Warren', 'm.warren@gmail.com'),
('178696', 'Alina', 'Dixon', 'a.dixon@gmail.com'),
('209747', 'Garry', 'Farrell', 'g.farrell@gmail.com'),
('212417', 'Miley', 'Carter', 'm.carter@gmail.com'),
('237715', 'Paul', 'Armstrong', 'p.armstrong@gmail.com'),
('251608', 'Aiden', 'Ryan', 'a.ryan@gmail.com'),
('251917', 'Marcus', 'Warren', 'm.warren@gmail.com'),
('25467', 'Maximilian', 'Payne', 'm.payne@gmail.com'),
('26587', 'Sofia', 'Mason', 's.mason@gmail.com'),
('27643', 'Edgar', 'Reed', 'e.reed@gmail.com'),
('284897', 'George', 'Wells', 'g.wells@gmail.com'),
('28846', 'Lucy', 'Hamilton', 'l.hamilton@gmail.com'),
('291306', 'Albert', 'Hall', 'a.hall@gmail.com'),
('30534', 'Edwin', 'Taylor', 'e.taylor@gmail.com'),
('308961', 'Catherine', 'Hall', 'c.hall@gmail.com'),
('322548', 'Paige', 'Payne', 'p.payne@gmail.com'),
('329769', 'Charlie', 'Thomas', 'c.thomas@gmail.com'),
('34146', 'Jack', 'Adams', 'j.adams@gmail.com'),
('373020', 'Stuart', 'Armstrong', 's.armstrong@gmail.com'),
('37449', 'Oliver', 'Martin', 'o.martin@gmail.com'),
('38532', 'Rosie', 'Martin', 'r.martin@gmail.com'),
('39547', 'Lydia', 'Stevens', 'l.stevens@gmail.com'),
('40135', 'Martin', 'Barnes', 'm.barnes@gmail.com'),
('42337', 'Lucas', 'Bennett', 'l.bennett@gmail.com'),
('433068', 'Luke', 'Bennett', 'l.bennett@gmail.com'),
('464080', 'Daryl', 'Murray', 'd.murray@gmail.com'),
('50969', 'Nicole', 'Walker', 'n.walker@gmail.com'),
('52381', 'James', 'Carter', 'j.carter@gmail.com'),
('52543', 'Adison', 'Wells', 'a.wells@gmail.com'),
('53959', 'Mike', 'Payne', 'm.payne@gmail.com'),
('60031', 'Daryl', 'Davis', 'd.davis@gmail.com'),
('65056', 'Camila', 'Murphy', 'c.murphy@gmail.com'),
('73836', 'Edwin', 'Martin', 'e.martin@gmail.com'),
('860079', 'Edgar', 'Perkins', 'e.perkins@gmail.com'),
('8688', 'Aida', 'Morris', 'a.morris@gmail.com'),
('contributor_id', 'first_name', 'last_name', 'email_address');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('ayushiambhore', '$2y$10$qPqR8S0rvgFDENmyPUpj6eeI/3c7B1/AXJOWH9HtlXQpvIYzQKRdC'),
('grace', '$2y$10$fmIADRqipe/pWUptlW3Vfuc.t7Aw.gM6Bfq7QljlIISI8ZaR/MQPG'),
('hcdouglas', '$2y$10$qzndKzry2zG2uOdYIfikc.jgFEtevZF4zrnB1Eivbb8I.7LtBtPni');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gives`
--
ALTER TABLE `gives`
  ADD PRIMARY KEY (`contributor_id`,`user_id`,`recipe_id`);

--
-- Indexes for table `has`
--
ALTER TABLE `has`
  ADD PRIMARY KEY (`user_id`,`recipe_id`);

--
-- Indexes for table `hashistory`
--
ALTER TABLE `hashistory`
  ADD PRIMARY KEY (`contributor_id`);

--
-- Indexes for table `ingreds_tab`
--
ALTER TABLE `ingreds_tab`
  ADD PRIMARY KEY (`recipe_id`,`ingredient`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`user_id`,`recipe_id`);

--
-- Indexes for table `rating_history`
--
ALTER TABLE `rating_history`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tab1_2`
--
ALTER TABLE `tab1_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`contributor_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `username` (`username`);
COMMIT;

--
-- Check for table `ratinghistory_ratings`
--
ALTER TABLE `ratinghistory_ratings`
  ADD CHECK (`ratings` <= 5 AND `ratings` >= 1);

--
-- Check for table `ratings`
--
ALTER TABLE `ratings`
  ADD CHECK (`rating` <= 5 AND `rating` >= 1);

--
-- Procedure for table `Recipes`
--
CREATE PROCEDURE selectEasy AS SELECT * FROM `Recipes` WHERE `n_steps` < 4 
  GO; 
EXEC selectEasy; 

GRANT ALL PRIVILEGES ON ProjectMilestone2.* TO 'hcdouglas_a'@'%';
GRANT ALL PRIVILEGES ON ProjectMilestone2.* TO 'hcdouglas_b'@'%';
GRANT ALL PRIVILEGES ON ProjectMilestone2.* TO 'hcdouglas_c'@'%';
GRANT ALL PRIVILEGES ON ProjectMilestone2.* TO 'hcdouglas_d'@'%';
GRANT ALL PRIVILEGES ON ProjectMilestone2.* TO 'td3_a'@'%';
GRANT ALL PRIVILEGES ON ProjectMilestone2.* TO 'td3_b'@'%';
GRANT ALL PRIVILEGES ON ProjectMilestone2.* TO 'td3_c'@'%';
GRANT ALL PRIVILEGES ON ProjectMilestone2.* TO 'td3_d'@'%';
GRANT ALL PRIVILEGES ON ProjectMilestone2.* TO 'ayushi_a'@'%';
GRANT ALL PRIVILEGES ON ProjectMilestone2.* TO 'ayushi_b'@'%';
GRANT ALL PRIVILEGES ON ProjectMilestone2.* TO 'ayushi_c'@'%';
GRANT ALL PRIVILEGES ON ProjectMilestone2.* TO 'ayushi_d'@'%';
GRANT ALL PRIVILEGES ON ProjectMilestone2.* TO 'grace_a'@'%';
GRANT ALL PRIVILEGES ON ProjectMilestone2.* TO 'grace_b'@'%';
GRANT ALL PRIVILEGES ON ProjectMilestone2.* TO 'grace_c'@'%';
GRANT ALL PRIVILEGES ON ProjectMilestone2.* TO 'grace_d'@'%';
GRANT SELECT, INSERT, DELETE, UPDATE ON ProjectMilestone2.tab1_2 TO 'PUBLIC'@'%';
GRANT SELECT, INSERT, UPDATE ON ProjectMilestone2.ratings TO 'PUBLIC'@'%';



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
