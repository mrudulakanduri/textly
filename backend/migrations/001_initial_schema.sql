create table users (
    user_id UUID DEFAULT gen_random_uuid() primary key,
    user_name text NOT NULL,
    email text UNIQUE NOT NULL,
    DOB date,
    password varchar(100),
    image_url text,
    lastseen TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    is_online boolean default false,
    bio text

);