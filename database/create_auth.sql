--
-- Create auth table
--

use vpn_connections;

CREATE TABLE auth
  (
    id       INT(6) UNSIGNED auto_increment PRIMARY KEY,
    service  VARCHAR(100) NOT NULL,
    port     VARCHAR(6),
    url      VARCHAR(100) NOT NULL,
    username VARCHAR(20),
    password VARCHAR(45)
  )
