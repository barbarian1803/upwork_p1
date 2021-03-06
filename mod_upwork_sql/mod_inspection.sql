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

CREATE TABLE `z_inspect_item_header` (
  `id` int(11) NOT NULL,
  `inspection_plan_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `batch_no` int(11) NOT NULL,
  `inspection_type` int(11) NOT NULL,
  `document_no` int(11) NOT NULL,
  `document_item` int(11) NOT NULL,
  `grn_batch_id` int(11) NOT NULL,
  `grn_item_id` int(11) NOT NULL,
  `supplier` int(11) NOT NULL,
  `qty_received` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

ALTER TABLE `z_inspect_item_header`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `z_inspect_item_header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;