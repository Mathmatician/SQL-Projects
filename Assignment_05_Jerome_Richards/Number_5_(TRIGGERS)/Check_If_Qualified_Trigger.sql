CREATE OR REPLACE TRIGGER Check_If_Qualified
   BEFORE INSERT ON Assign
   FOR EACH ROW
DECLARE
   facNum_from_Qualify varchar(10);
   num_of_classes numeric(10);
BEGIN
   SELECT Qualify.FId
      into facNum_from_Qualify
      from Qualify
      WHERE Qualify.CId = :NEW.CId AND Qualify.FId = :NEW.FId;

   SELECT COUNT(Assign.FId)
      into num_of_classes
      from Assign
      WHERE Assign.FId = :NEW.FId;

   IF facNum_from_Qualify = :NEW.FId AND num_of_classes < 3 THEN
      DBMS_OUTPUT.PUT_LINE('Allow Insert');
   ELSE
      RAISE_APPLICATION_ERROR(-20008, 'Insert denied');
   END IF;
END;