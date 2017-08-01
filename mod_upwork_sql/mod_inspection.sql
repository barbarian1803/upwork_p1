CREATE TABLE `0_mod_inspection_plan_header` (
  `id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `task_list_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `0_mod_inspection_plan_header`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `0_mod_inspection_plan_header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;


CREATE TABLE `0_mod_inspection_plan_content` (
  `id` int(11) NOT NULL,
  `inspection_plan_id` int(11) NOT NULL,
  `question` int(11) NOT NULL,
  `is_mandatory` int(11) NOT NULL,
  `asnwer_type` int(11) NOT NULL,
  `option_list` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `0_mod_inspection_plan_content`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `0_mod_inspection_plan_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;