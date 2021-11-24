CREATE TABLE `users` (
  # `id` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `username` varchar(80) NOT NULL UNIQUE,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;