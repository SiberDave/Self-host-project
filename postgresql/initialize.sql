-- Create Vaultwarden Database

CREATE DATABASE vaultwarden;
CREATE USER vaultwarden WITH ENCRYPTED PASSWORD '{password}';
GRANT ALL ON DATABASE vaultwarden TO vaultwarden;
GRANT all privileges ON database vaultwarden TO vaultwarden;
GRANT ALL ON SCHEMA public TO vaultwarden;

-- Create Nextcloud Database

CREATE DATABASE nextcloud;
CREATE USER nextclouduser WITH ENCRYPTED PASSWORD '{password}';
GRANT ALL PRIVILEGES ON DATABASE nextcloud TO nextclouduser; 
-- Use postgre user or superadmin user
GRANT ALL ON SCHEMA public TO nextclouduser;

-- Create Gitea Database

CREATE DATABASE gitea;
CREATE USER giteauser WITH ENCRYPTED PASSWORD '{password}';
GRANT ALL PRIVILEGES ON DATABASE gitea TO giteauser;
GRANT ALL ON SCHEMA public TO giteauser;