CREATE TABLE `0_mod_batch_number_master` (
  `id` int(11) NOT NULL,
  `string_format` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serial_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `0_mod_batch_number_master` ADD PRIMARY KEY (`id`);
ALTER TABLE `0_mod_batch_number_master` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;
