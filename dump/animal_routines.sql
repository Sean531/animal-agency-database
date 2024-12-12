-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: animal
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `availableanimals`
--

DROP TABLE IF EXISTS `availableanimals`;
/*!50001 DROP VIEW IF EXISTS `availableanimals`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `availableanimals` AS SELECT 
 1 AS `animal_id`,
 1 AS `name`,
 1 AS `breed`,
 1 AS `age`,
 1 AS `vaccinated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `donationslist`
--

DROP TABLE IF EXISTS `donationslist`;
/*!50001 DROP VIEW IF EXISTS `donationslist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `donationslist` AS SELECT 
 1 AS `change_amount`,
 1 AS `description`,
 1 AS `transaction_time`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `adopterapplications`
--

DROP TABLE IF EXISTS `adopterapplications`;
/*!50001 DROP VIEW IF EXISTS `adopterapplications`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `adopterapplications` AS SELECT 
 1 AS `person_id`,
 1 AS `application_status`,
 1 AS `preferred_species`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `upcoming_visitations`
--

DROP TABLE IF EXISTS `upcoming_visitations`;
/*!50001 DROP VIEW IF EXISTS `upcoming_visitations`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `upcoming_visitations` AS SELECT 
 1 AS `visit_time`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `lowinventory`
--

DROP TABLE IF EXISTS `lowinventory`;
/*!50001 DROP VIEW IF EXISTS `lowinventory`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lowinventory` AS SELECT 
 1 AS `product_id`,
 1 AS `product_name`,
 1 AS `current_amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `weeklyschedule`
--

DROP TABLE IF EXISTS `weeklyschedule`;
/*!50001 DROP VIEW IF EXISTS `weeklyschedule`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `weeklyschedule` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `start_time`,
 1 AS `shift_length`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mostrecentledgerchange`
--

DROP TABLE IF EXISTS `mostrecentledgerchange`;
/*!50001 DROP VIEW IF EXISTS `mostrecentledgerchange`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mostrecentledgerchange` AS SELECT 
 1 AS `ledger_id`,
 1 AS `person_id`,
 1 AS `change_amount`,
 1 AS `description`,
 1 AS `transaction_time`,
 1 AS `account_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `availableanimals`
--

/*!50001 DROP VIEW IF EXISTS `availableanimals`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `availableanimals` AS select `animal`.`animal_id` AS `animal_id`,`animal`.`name` AS `name`,`animal`.`breed` AS `breed`,`animal`.`age` AS `age`,`animal`.`vaccinated` AS `vaccinated` from `animal` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `donationslist`
--

/*!50001 DROP VIEW IF EXISTS `donationslist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `donationslist` AS select `l`.`change_amount` AS `change_amount`,`l`.`description` AS `description`,`l`.`transaction_time` AS `transaction_time` from (`ledger` `l` join `person` `p` on((`l`.`person_id` = `p`.`person_id`))) where (`l`.`change_amount` > 0) order by `l`.`transaction_time` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `adopterapplications`
--

/*!50001 DROP VIEW IF EXISTS `adopterapplications`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `adopterapplications` AS select `adopter`.`person_id` AS `person_id`,`adopter`.`application_status` AS `application_status`,`adopter`.`preferred_species` AS `preferred_species` from `adopter` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `upcoming_visitations`
--

/*!50001 DROP VIEW IF EXISTS `upcoming_visitations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `upcoming_visitations` AS select `s`.`visit_time` AS `visit_time`,`p`.`first_name` AS `first_name`,`p`.`last_name` AS `last_name`,`a`.`name` AS `name` from ((`scheduled_visits` `s` join `animal` `a` on((`s`.`animal_id` = `a`.`animal_id`))) join `person` `p` on((`s`.`person_id` = `p`.`person_id`))) order by `s`.`visit_time` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lowinventory`
--

/*!50001 DROP VIEW IF EXISTS `lowinventory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lowinventory` AS select `inventory`.`product_id` AS `product_id`,`inventory`.`product_name` AS `product_name`,`inventory`.`current_amount` AS `current_amount` from `inventory` where (`inventory`.`current_amount` <= 20) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `weeklyschedule`
--

/*!50001 DROP VIEW IF EXISTS `weeklyschedule`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `weeklyschedule` AS select `p`.`first_name` AS `first_name`,`p`.`last_name` AS `last_name`,`e`.`start_time` AS `start_time`,`e`.`shift_length` AS `shift_length` from (`employee_schedule` `e` join `person` `p` on((`e`.`person_id` = `p`.`person_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mostrecentledgerchange`
--

/*!50001 DROP VIEW IF EXISTS `mostrecentledgerchange`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mostrecentledgerchange` AS select `ledger`.`ledger_id` AS `ledger_id`,`ledger`.`person_id` AS `person_id`,`ledger`.`change_amount` AS `change_amount`,`ledger`.`description` AS `description`,`ledger`.`transaction_time` AS `transaction_time`,`ledger`.`account_id` AS `account_id` from `ledger` where (`ledger`.`ledger_id` = (select max(`ledger`.`ledger_id`) from `ledger`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'animal'
--

--
-- Dumping routines for database 'animal'
--
/*!50003 DROP FUNCTION IF EXISTS `UpdateAccountBalance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `UpdateAccountBalance`(p_id INT UNSIGNED, c_amount DECIMAL(10, 2), descr VARCHAR(200), acc_id INT) RETURNS varchar(255) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE new_balance DECIMAL(15, 2);
    DECLARE status_message VARCHAR(255);

    SELECT current_balance INTO new_balance
    FROM accounts
    WHERE account_id = acc_id;
    
   IF new_balance IS NULL THEN
        SET status_message = CONCAT('Account with ID ', acc_id, ' not found.');
    ELSE
        SET new_balance = new_balance + c_amount;

        UPDATE accounts
        SET current_balance = new_balance
        WHERE account_id = acc_id;

        INSERT INTO ledger (person_id, change_amount, description, account_id)
        VALUES (p_id, c_amount, descr, acc_id);

        SET status_message = CONCAT('Balance updated successfully. New balance: ', new_balance);
    END IF;


    RETURN status_message;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `vaccinate_animal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `vaccinate_animal`(ani_id INT UNSIGNED) RETURNS int
    DETERMINISTIC
BEGIN
	DECLARE vaccination_status TINYINT(1) UNSIGNED;
    
	SELECT vaccinated INTO vaccination_status
    FROM animal
    WHERE animal_id = ani_id;
    
    IF vaccination_status IS NULL THEN
        RETURN 0;
	ELSE 
		UPDATE animal
        SET vaccinated = 1
        WHERE animal_id = ani_id;
        
	END IF;
RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-22 16:44:22
