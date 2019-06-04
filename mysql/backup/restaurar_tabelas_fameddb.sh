#!/bin/bash

########################################################
RESTAURE=/var/backups/database/restaure/famed
DATA=`/bin/date +%Y%m%d.%H%M`
DIRLOG=/var/log/mysql
ERRORLOG=$DIRLOG/dump-mysql.errorlog
LOG=$DIRLOG/dump-mysql.log

#Define o CLIENTE e Host do servidor:q
CLIENTE="UFBA"
HOST="canudos"
AMBIENTE="Producao"
SGBD="MySQL.5.7"
SERVIDOR="localhost"
USER="operador"
PASSWORD="sbkBD20#"
EMAIL="bancodedados-l@listas.ufba.br"

cd $RESTAURE

# Restuarar tabelas
 gunzip < adodb_logsql.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < alunos.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < j16_jupgrade_categories.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < j16_jupgrade_menus.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < j16_jupgrade_modules.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < j16_jupgrade_steps.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos__fb_contact_sample.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_acajoom_lists.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_acajoom_mailings.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_acajoom_queue.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_acajoom_stats_details.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_acajoom_stats_global.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_acajoom_subscribers.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_acajoom_xonfig.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_assignments.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_autopopulate_conf.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_avr_player.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_avr_popup.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_avr_ripper.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_avr_tags.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_avrbak_avr_player.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_avrbak_avr_ripper.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_avrbak_avr_tags.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_banner.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_bannerclient.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_bannertrack.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_categories.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_communicator.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_communicator_subscribers.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_components.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_contact_details.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_content.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_content_frontpage.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_content_rating.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_core_acl_aro.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_core_acl_aro_groups.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_core_acl_aro_map.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_core_acl_aro_sections.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_core_acl_groups_aro_map.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_core_log_items.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_core_log_searches.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_docman.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_docman_groups.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_docman_history.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_docman_licenses.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_docman_log.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_downloads_blob.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_downloads_containers.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_downloads_files.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_downloads_log.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_downloads_repository.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_downloads_reviews.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_downloads_structure.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_downloads_text.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_em_mysqladmin_log.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_fabrik_calendar_events.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_fabrik_connections.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_fabrik_cron.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_fabrik_elements.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_fabrik_form_sessions.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_fabrik_formgroup.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_fabrik_forms.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_fabrik_groups.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_fabrik_joins.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_fabrik_jsactions.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_fabrik_log.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_fabrik_packages.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_fabrik_plugins.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_fabrik_tables.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_fabrik_validations.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_fabrik_visualizations.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_groups.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_jp_def.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_jp_packvars.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_menu.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_menu_types.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_messages.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_messages_cfg.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_migration_backlinks.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_modules.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_modules_menu.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_mxc_admcomments.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_mxc_badwords.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_mxc_blockip.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_mxc_comments.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_mxc_favoured.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_newsfeeds.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_permissions.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_plugins.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_poll_data.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_poll_date.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_poll_menu.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_polls.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_roombooking_bookings.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_roombooking_building_organization.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_roombooking_buildings.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_roombooking_organizations.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_roombooking_rooms.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_sections.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_session.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_stats_agents.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_templates_menu.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_users.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_weblinks.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < jos_wf_profiles.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < mos_banner.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < mos_bannerclient.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < mos_bannerfinish.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < mos_categories.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < mos_components.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < mos_comprofiler.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < mos_comprofiler_field_values.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < mos_comprofiler_fields.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < mos_comprofiler_lists.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < mos_comprofiler_tabs.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < mos_comprofiler_userreports.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < mos_contact_details.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < mos_content.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < mos_content_frontpage.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < mos_content_rating.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < mrbs_area.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < mrbs_entry.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < mrbs_repeat.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < mrbs_room.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < mrbs_users.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < mrbs_variables.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < mrbs_zoneinfo.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_acajoom_lists.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_acajoom_mailings.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_acajoom_queue.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_acajoom_stats_details.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_acajoom_stats_global.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_acajoom_subscribers.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_acajoom_xonfig.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_assignments.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_autopopulate_conf.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_avr_player.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_avr_popup.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_avr_ripper.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_avr_tags.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_avrbak_avr_player.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_avrbak_avr_ripper.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_avrbak_avr_tags.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_banner.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_bannerclient.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_bannertrack.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_categories.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_communicator.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_communicator_subscribers.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_components.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_contact_details.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_content.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_content_frontpage.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_content_rating.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_core_acl_aro.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_core_acl_aro_groups.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_core_acl_aro_map.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_core_acl_aro_sections.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_core_acl_groups_aro_map.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_core_log_items.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_core_log_searches.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_docman.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_docman_groups.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_docman_history.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_docman_licenses.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_docman_log.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_downloads_blob.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_downloads_containers.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_downloads_files.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_downloads_log.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_downloads_repository.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_downloads_reviews.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_downloads_structure.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_downloads_text.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_em_mysqladmin_log.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_groups.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_jp_def.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_jp_packvars.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_menu.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_menu_types.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_messages.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_messages_cfg.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_migration_backlinks.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_modules.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_modules_menu.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_mxc_admcomments.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_mxc_badwords.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_mxc_blockip.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_mxc_comments.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_mxc_favoured.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_newsfeeds.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_permissions.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_plugins.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_poll_data.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_poll_date.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_poll_menu.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_polls.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_sections.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_session.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_stats_agents.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_templates_menu.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_users.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_vemod_news_mailer_log.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_vemod_news_mailer_subs.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_vemod_news_mailer_users.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb
 gunzip < tst_weblinks.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD fameddb