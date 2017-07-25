INSERT INTO `am_resources` (`res_id`,`res_name`) VALUES 
  (7,'accountDetails.xhtml');
INSERT INTO `am_resources` (`res_id`,`res_name`) VALUES 
  (8,'createFollowUps.xhtml');
INSERT INTO `am_resources` (`res_id`,`res_name`) VALUES 
  (9,'createTrails.xhtml');
INSERT INTO `am_resources` (`res_id`,`res_name`) VALUES 
  (10,'assignedAccList.xhtml');
INSERT INTO `am_resources` (`res_id`,`res_name`) VALUES 
  (11,'unAssignedAccList.xhtml');

INSERT INTO `am_role_resource` (`rr_id`,`role_id`,`res_id`) VALUES 
  (8,2,7);
INSERT INTO `am_role_resource` (`rr_id`,`role_id`,`res_id`) VALUES 
  (9,2,8);
INSERT INTO `am_role_resource` (`rr_id`,`role_id`,`res_id`) VALUES 
  (10,2,9);
INSERT INTO `am_role_resource` (`rr_id`,`role_id`,`res_id`) VALUES 
  (11,1,10);
INSERT INTO `am_role_resource` (`rr_id`,`role_id`,`res_id`) VALUES 
  (12,1,11);
