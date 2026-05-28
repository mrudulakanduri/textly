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
create table conversations (
   conversation_id UUID DEFAULT gen_random_uuid() primary key,
   is_group boolean default false,
   grp_name text,
   group_image_url text,
   created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);
create table conversation_participants (
    user_id UUID references users(user_id),
    conversation_id UUID references conversations(conversation_id),
    joined_at TIMESTAMPTZ default CURRENT_TIMESTAMP,    
    primary key (user_id,conversation_id)

);

create table messages (
    mess_id UUID default gen_random_uuid() primary key,
    conversation_id UUID REFERENCES conversations(conversation_id),
    sender_id UUID REFERENCES users(user_id),
    content TEXT NOT NULL,
    status VARCHAR(10) DEFAULT 'sent',
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);
