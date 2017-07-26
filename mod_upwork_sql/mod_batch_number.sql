CREATE TABLE `0_mod_batch_number_master` (
  `id` int(11) NOT NULL,
  `string_format` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serial_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `0_mod_batch_number_master` ADD PRIMARY KEY (`id`);
ALTER TABLE `0_mod_batch_number_master` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;


CREATE TABLE `0_mod_batch_number_assign` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `0_mod_batch_number_assign` ADD PRIMARY KEY (`id`);
ALTER TABLE `0_mod_batch_number_assign` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

INSERT INTO `0_mod_batch_number_assign` (`id`, `type`, `batch_id`) VALUES
(1, 'from_po', 0),
(2, 'from_inventory_adjustment', 0),
(3, 'from_production', 0);
