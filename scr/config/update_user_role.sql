-- Update user table structure
ALTER TABLE user MODIFY COLUMN role ENUM('admin', 'pelanggan') DEFAULT 'pelanggan';

-- Update existing users with role 'kasir' or 'owner' to 'pelanggan'
UPDATE user SET role = 'pelanggan' WHERE role IN ('kasir', 'owner'); 