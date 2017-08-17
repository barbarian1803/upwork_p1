CREATE TABLE `Z_inspection_plan_header` (
  `id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `task_list_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `Z_inspection_plan_header`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `Z_inspection_plan_header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;


CREATE TABLE `Z_inspection_plan_content` (
  `id` int(11) NOT NULL,
  `inspection_plan_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `is_mandatory` BOOLEAN NOT NULL,
  `answer_type` int(11) NOT NULL,
  `option_list` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `Z_inspection_plan_content`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `Z_inspection_plan_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;


CREATE TABLE `Z_inspection_plan_content_option` (
  `id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `option_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `Z_inspection_plan_content_option`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `Z_inspection_plan_content_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;