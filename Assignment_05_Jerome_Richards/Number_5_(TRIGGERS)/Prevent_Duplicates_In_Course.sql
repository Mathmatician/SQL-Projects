CREATE OR REPLACE TRIGGER Prevent_Duplicates_in_Course
   BEFORE INSERT ON Course
   FOR EACH ROW
DECLARE
   num_of_rows numeric(10);
BEGIN
   SELECT COUNT(Course.CId)
      into num_of_rows
      from Course
      WHERE Course.CId = :NEW.CId;

   IF num_of_rows >= 1 THEN
      RAISE_APPLICATION_ERROR(-20008, 'Can not duplicate tuples');
   END IF;
END;