CREATE OR REPLACE TRIGGER Prevent_Duplicates_in_Qualify
   BEFORE INSERT ON Qualify
   FOR EACH ROW
DECLARE
   num_of_rows numeric(10);
BEGIN
   SELECT COUNT(Qualify.FId)
      into num_of_rows
      from Qualify
      WHERE Qualify.FId = :NEW.FId AND Qualify.CId = :NEW.CId;

   IF num_of_rows >= 1 THEN
      RAISE_APPLICATION_ERROR(-20008, 'Can not duplicate tuples');
   END IF;
END;