DELETE
FROM library_section_permissions
WHERE account_id > 1

DELETE
FROM media_item_settings
WHERE account_id > 1

DELETE
FROM media_stream_settings
WHERE account_id > 1

DELETE
FROM metadata_item_accounts
WHERE account_id > 1

DELETE
FROM metadata_item_settings
WHERE account_id > 1

DELETE
FROM metadata_item_views
WHERE account_id > 1

DELETE
FROM play_queues
WHERE account_id > 1

DELETE
FROM plugin_permissions
WHERE account_id > 1

DELETE
FROM statistics_bandwidth
WHERE account_id > 1

DELETE
FROM statistics_media
WHERE account_id > 1

DELETE
FROM view_settings
WHERE account_id > 1

DELETE
FROM accounts
WHERE id > 1