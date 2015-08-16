--
-- Change current column to the most recent configurations
--

use vpn_connections;

-- Change previously known current column value
UPDATE connections SET current = "F" WHERE current = "T";

-- Set new current configuration
UPDATE connections SET current = "T" WHERE name = @name;
