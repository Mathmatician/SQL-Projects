CREATE OR REPLACE TRIGGER Prevent_Duplicates_in_Assign
   BEFORE INSERT ON Assign
   FOR EACH ROW
DECLARE
   num_of_rows numeric(10);
BEGIN
   SELECT COUNT(Assign.FId)
      into num_of_rows
      from Assign
      WHERE Assign.FId = :NEW.FId AND Assign.CId = :NEW.CId;

   IF num_of_rows >= 1 THEN
      RAISE_APPLICATION_ERROR(-20008, 'Can not duplicate tuples');
   END IF;
END;