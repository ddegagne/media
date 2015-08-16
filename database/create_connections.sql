--
-- Create connections table
--

use vpn_connections;

CREATE TABLE connections
  (
    id            int(11) NOT NULL AUTO_INCREMENT,
    name          varchar(45) DEFAULT NULL,
    country_code  varchar(2) DEFAULT NULL,
    file_path     varchar(150) DEFAULT NULL,
    current       varchar(1) DEFAULT NULL,
    PRIMARY KEY (`id`)
  )
