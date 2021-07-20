SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Abhishek', 'abhisheka@gmail.com', 99000),
(2, 'Bhushan', 'bhushan@gmail.com', 54000),
(3, 'Ganesh', 'ganesh@gmail.com', 60000),
(4, 'Chaitanya', 'chaitanya@gmail.com', 72000),
(5, 'Mayur', 'mayur@gmail.com', 46000),
(6, 'Nitsh', 'nitish@gmail.com', 100000),
(7, 'Sarthak', 'sarthak@gmail.com', 88000),
(8, 'Yash', 'yash@gmail.com', 59000),
(9, 'Parth', 'parth@gmail.com', 66000),
(10, 'Yuvraj', 'yuvraj@gmail.com', 250000);


ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;

ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;
