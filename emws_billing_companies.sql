-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: fulflmnntdbproduction-mar-2016-12-02.cbudzbiqnbgm.ap-southeast-1.rds.amazonaws.com    Database: AnchantoPulse
-- ------------------------------------------------------
-- Server version	5.6.34-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary table structure for view `billing_companies`
--

DROP TABLE IF EXISTS `billing_companies`;
/*!50001 DROP VIEW IF EXISTS `billing_companies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `billing_companies` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `description`,
 1 AS `position`,
 1 AS `url`,
 1 AS `logo_file_name`,
 1 AS `logo_content_type`,
 1 AS `logo_file_size`,
 1 AS `logo_updated_at`,
 1 AS `html_email_type`,
 1 AS `contact_person_name`,
 1 AS `contact_phone`,
 1 AS `contact_mobile`,
 1 AS `contact_email`,
 1 AS `api_key`,
 1 AS `cut_off_time`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `aggrement_referrence`,
 1 AS `invoice_no_format`,
 1 AS `payment_term`,
 1 AS `platform_usage_charge`,
 1 AS `bussiness_name`,
 1 AS `bussiness_domain`,
 1 AS `country_id`,
 1 AS `retailer_catagory_id`,
 1 AS `retailer_comments`,
 1 AS `company_registration_number`,
 1 AS `status_id`,
 1 AS `is_free_trial`,
 1 AS `agreement_expire_on`,
 1 AS `currency`,
 1 AS `time_zone`,
 1 AS `permalink`,
 1 AS `event_change_notification`,
 1 AS `callback_url`,
 1 AS `allow_cash_on_delivery`,
 1 AS `cash_recieved_url`,
 1 AS `slot_type`,
 1 AS `activate_inventory_threshold_value`,
 1 AS `retailer_inventory_threshold_value`,
 1 AS `is_kit_based`,
 1 AS `add_cc_mails`,
 1 AS `skip_quantity_check`,
 1 AS `split_partial_orders`,
 1 AS `allow_merchants`,
 1 AS `allow_collecton_centers`,
 1 AS `enable_consignment_status_update`,
 1 AS `sms_on_delivery_line`,
 1 AS `third_party_delivery`,
 1 AS `enable_order_processing_report`,
 1 AS `extra_mails`,
 1 AS `analytic_enabled`,
 1 AS `enable_buffer_stock`,
 1 AS `default_buffer_count`,
 1 AS `stock_sync_callback_url`,
 1 AS `is_shopify_enabled`,
 1 AS `is_wine_customer`,
 1 AS `tenant_id`,
 1 AS `short_code`,
 1 AS `is_admin`,
 1 AS `is_crossborder`,
 1 AS `is_cm_enabled`,
 1 AS `is_usn_base`,
 1 AS `tin_no`,
 1 AS `cst_no`,
 1 AS `parent_id`,
 1 AS `customer_code`,
 1 AS `send_sms_on_failed_delivery`,
 1 AS `is_selluseller_enabled`,
 1 AS `erp_reference_number`,
 1 AS `lang_preference`,
 1 AS `bypass_stock_update`,
 1 AS `reference_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `billing_companies`
--

/*!50001 DROP VIEW IF EXISTS `billing_companies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`pulseweb`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `billing_companies` AS select `t`.`id` AS `id`,`t`.`name` AS `name`,`t`.`description` AS `description`,`t`.`position` AS `position`,`t`.`url` AS `url`,`t`.`logo_file_name` AS `logo_file_name`,`t`.`logo_content_type` AS `logo_content_type`,`t`.`logo_file_size` AS `logo_file_size`,`t`.`logo_updated_at` AS `logo_updated_at`,`t`.`html_email_type` AS `html_email_type`,`t`.`contact_person_name` AS `contact_person_name`,`t`.`contact_phone` AS `contact_phone`,`t`.`contact_mobile` AS `contact_mobile`,`t`.`contact_email` AS `contact_email`,`t`.`api_key` AS `api_key`,`t`.`cut_off_time` AS `cut_off_time`,`t`.`created_at` AS `created_at`,`t`.`updated_at` AS `updated_at`,`t`.`aggrement_referrence` AS `aggrement_referrence`,`t`.`invoice_no_format` AS `invoice_no_format`,`t`.`payment_term` AS `payment_term`,`t`.`platform_usage_charge` AS `platform_usage_charge`,`t`.`bussiness_name` AS `bussiness_name`,`t`.`bussiness_domain` AS `bussiness_domain`,`t`.`country_id` AS `country_id`,`t`.`retailer_catagory_id` AS `retailer_catagory_id`,`t`.`retailer_comments` AS `retailer_comments`,`t`.`company_registration_number` AS `company_registration_number`,`t`.`status_id` AS `status_id`,`t`.`is_free_trial` AS `is_free_trial`,`t`.`agreement_expire_on` AS `agreement_expire_on`,`t`.`currency` AS `currency`,`t`.`time_zone` AS `time_zone`,`t`.`permalink` AS `permalink`,`t`.`event_change_notification` AS `event_change_notification`,`t`.`callback_url` AS `callback_url`,`t`.`allow_cash_on_delivery` AS `allow_cash_on_delivery`,`t`.`cash_recieved_url` AS `cash_recieved_url`,`t`.`slot_type` AS `slot_type`,`t`.`activate_inventory_threshold_value` AS `activate_inventory_threshold_value`,`t`.`retailer_inventory_threshold_value` AS `retailer_inventory_threshold_value`,`t`.`is_kit_based` AS `is_kit_based`,`t`.`add_cc_mails` AS `add_cc_mails`,`t`.`skip_quantity_check` AS `skip_quantity_check`,`t`.`split_partial_orders` AS `split_partial_orders`,`t`.`allow_merchants` AS `allow_merchants`,`t`.`allow_collecton_centers` AS `allow_collecton_centers`,`t`.`enable_consignment_status_update` AS `enable_consignment_status_update`,`t`.`sms_on_delivery_line` AS `sms_on_delivery_line`,`t`.`third_party_delivery` AS `third_party_delivery`,`t`.`enable_order_processing_report` AS `enable_order_processing_report`,`t`.`extra_mails` AS `extra_mails`,`t`.`analytic_enabled` AS `analytic_enabled`,`t`.`enable_buffer_stock` AS `enable_buffer_stock`,`t`.`default_buffer_count` AS `default_buffer_count`,`t`.`stock_sync_callback_url` AS `stock_sync_callback_url`,`t`.`is_shopify_enabled` AS `is_shopify_enabled`,`t`.`is_wine_customer` AS `is_wine_customer`,`t`.`tenant_id` AS `tenant_id`,`t`.`short_code` AS `short_code`,`t`.`is_admin` AS `is_admin`,`t`.`is_crossborder` AS `is_crossborder`,`t`.`is_cm_enabled` AS `is_cm_enabled`,`t`.`is_usn_base` AS `is_usn_base`,`t`.`tin_no` AS `tin_no`,`t`.`cst_no` AS `cst_no`,`t`.`parent_id` AS `parent_id`,`t`.`customer_code` AS `customer_code`,`t`.`send_sms_on_failed_delivery` AS `send_sms_on_failed_delivery`,`t`.`is_selluseller_enabled` AS `is_selluseller_enabled`,`t`.`erp_reference_number` AS `erp_reference_number`,`t`.`lang_preference` AS `lang_preference`,`t`.`bypass_stock_update` AS `bypass_stock_update`,NULL AS `reference_number` from `fulflmnntdbproduction`.`billing_companies` `t` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-17  5:57:57
