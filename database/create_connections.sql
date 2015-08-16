--
-- Create connections table
--

use vpn_connections;

CREATE TABLE connections
  (
    id            INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name          VARCHAR(45) DEFAULT NULL,
    country_code  VARCHAR(2) DEFAULT NULL,
    file_path     VARCHAR(150) DEFAULT NULL,
    current       VARCHAR(1) DEFAULT NULL
  )
