-- Add types for the new dcs that are introduced for the derived data
ALTER TYPE s3region ADD VALUE 'wasabi-eu-central-2-derived';
ALTER TABLE embeddings ADD COLUMN IF NOT EXISTS datacenters s3region[] default '{b2-eu-cen}';