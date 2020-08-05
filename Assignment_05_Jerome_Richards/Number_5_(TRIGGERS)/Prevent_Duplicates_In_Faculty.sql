CREATE OR REPLACE TRIGGER Prevent_Duplicates_in_Faculty
   BEFORE INSERT ON Faculty
   FOR EACH ROW
DECLARE
   num_of_rows numeric(10);
BEGIN
   SELECT COUNT(Faculty.FId)
      into num_of_rows
      from Faculty
      WHERE Faculty.FId = :NEW.FId;

   IF num_of_rows >= 1 THEN
      RAISE_APPLICATION_ERROR(-20008, 'Can not duplicate tuples');
   END IF;
END;