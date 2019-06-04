#!/bin/bash

########################################################
RESTAURE=/backup/mysql/restore/portalufbadb
DATA=`/bin/date +%Y%m%d.%H%M`

DIRLOG=/var/log/mysql
ERRORLOG=$DIRLOG/dump-mysql.errorlog
LOG=$DIRLOG/dump-mysql.log

#Define o CLIENTE e Host do servidor:q
CLIENTE="UFBA"
HOST="wanderley"
AMBIENTE="Desenvolvimento"
SGBD="MySQL.5.7"
SERVIDOR="localhost"
USER="operador"
PASSWORD="sbkBD20#"
EMAIL="bancodedados-l@listas.ufba.br"

cd $RESTAURE

 gunzip < ufba_access.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_actions.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_actions_aid.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_advanced_help_index.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_aggregator_category.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_aggregator_category_feed.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_aggregator_category_item.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_aggregator_feed.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_aggregator_item.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_authmap.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_batch.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_blocks.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_blocks_roles.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_boost_cache.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_boost_cache_relationships.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_boost_cache_settings.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_boost_crawler.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_boxes.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_cache.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_cache_block.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_cache_content.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_cache_emfield_xml.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_cache_filter.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_cache_form.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_cache_hierarchical_select.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_cache_media_youtube_status.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_cache_menu.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_cache_page.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_cache_rules.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_cache_update.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_cache_views.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_cache_views_data.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_captcha_points.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_captcha_sessions.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_comments.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field__notificacoes_licitacoes.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_bannerimage.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_campus.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_cep.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_city.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_council.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_direct_phone.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_director.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_email.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_fax.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_file.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_forma_prestacao_servico.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_general_phone.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_hierarchy.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_highlightorder.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_image.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_link.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_links.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_logradouro.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_neighborhood.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_nomecargo.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_number.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_phone_number.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_publico_alvo.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_field_vice.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_group.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_group_fields.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_node_field.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_node_field_instance.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_agendaautoridade.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_banner.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_bidding.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_camara.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_central_administration.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_commission.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_council.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_file.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_instrucoesnormativas.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_majors.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_manualprocedimentos.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_news.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_news_guest.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_organs_structuring.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_orgaos_associados_aos_conselhos.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_other_organs_linked_to_ufba.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_other_ufba_site.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_person.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_portarias.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_public_consultation.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_reitor.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_resolucao.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_service.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_top_banner.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_ufbatv.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_university_entity.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_content_type_videos.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_custom_breadcrumb.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_custom_breadcrumbs_paths.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_custom_breadcrumbs_taxonomy_term.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_custom_breadcrumbs_taxonomy_vocabulary.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_custom_breadcrumbs_views.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_date_format_locale.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_date_format_types.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_date_formats.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_devel_queries.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_devel_times.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_files.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_filter_formats.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_filters.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_flood.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_gmap_taxonomy_node.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_gmap_taxonomy_term.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_history.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_imagecache_action.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_imagecache_preset.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_importexportapi_db_put_map.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_importexportapi_db_put_map_alt.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_js_injector_rule.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_languages.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_locales_source.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_locales_target.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_media_youtube_metadata.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_media_youtube_node_data.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_menu_custom.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_menu_links.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_menu_router.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_multiblock.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_node.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_node_access.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_node_comment_statistics.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_node_counter.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_node_import_status.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_node_import_tasks.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_node_revisions.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_node_type.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_nodequeue_nodes.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_nodequeue_queue.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_nodequeue_roles.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_nodequeue_subqueue.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_nodequeue_types.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_permission.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_role.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_rules_rules.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_rules_sets.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_scheduler.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_search_dataset.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_search_index.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_search_node_links.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_search_total.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_semaphore.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_sessions.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_shortcut.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_smartqueue.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_system.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_term_data.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_term_hierarchy.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_term_node.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_term_relation.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_term_synonym.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_trigger_assignments.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_upload.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_url_alias.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_users.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_users_roles.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_variable.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_views_display.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_views_object_cache.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_views_view.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_vocabulary.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_vocabulary_node_types.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_watchdog.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_wysiwyg.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_xmlsitemap.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_xmlsitemap_node.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
 gunzip < ufba_xmlsitemap_taxonomy.sql.gz | mysql -u$USER -h$SERVIDOR -p$PASSWORD portalufba3dsvdb
