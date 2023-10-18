DROP TABLE IF EXISTS your_table_name_here CASCADE;

CREATE TABLE users (
  id INT SERIAL PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255),
);

CREATE TABLE properties (
  id INT SERIAL PRIMARY KEY,
  owner_id INTEGER,
  title VARCHAR(255),
  description TEXT,
  thumbnail_photo_url VARCHAR(255),
  cover_photo_url VARCHAR(225),
  cost_per_night INT,
  parking_spaces INT,
  number_of_bathrooms INT,
  number_of_bedrooms INT,
  country VARCHAR(255),
  street VARCHAR(255),
  city VARCHAR(255),
  province VARCHAR(255),
  post_code VARCHAR(255),
  active BOOLEAN,
);

CREATE TABLE reservations (
  id INT SERIAL PRIMARY KEY,
  start_date DATE,
  end_date DATE,
  property_id INT,
  guest_id INT,
);

CREATE TABLE property_reviews (
  id INT SERIAL PRIMARY KEY,
  property_id INT,
  guest_id INT,
  reservation_id INT,
  rating SMALLINT,
  message TEXT,
);