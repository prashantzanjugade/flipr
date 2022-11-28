-- Verify flipr:appschema on pg

BEGIN;

DO $$
	BEGIN
		   ASSERT (SELECT has_schema_privilege('flipr', 'usage'));
	END $$;

ROLLBACK;
