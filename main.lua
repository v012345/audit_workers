print("--------- start lua scripts ---------")
package.path = './scripts/?.lua;' .. package.path

require "load_all_tables"

require "utils"
buff_base:check()
buff_rule:check()
-- entity_ai:check()
item_fashion_role_type1:check()
item_fashion_role_type2:check()
-- item_fashion_role_type3:check()
item_fashion_role_type4:check()
item_fashion_suit:check()
config_common_dialog:check()
item_superskill_config_type1:check()
item_superskill_config_type2:check()
-- item_superskill_config_type3:check()
item_superskill_config_type4:check()
item_artifact_config_type1:check()
item_artifact_config_type2:check()
-- item_artifact_config_type3:check()
item_artifact_config_type4:check()
-- other_openfunction:check()
other_answer:check()
item_gift:check()
other_shop_shelf:check()
other_shop_goods:check()
text_fighttips:check()
world_lv_gift:check()
item_material:check()
entity_goods:check()
item_base:check()
item_artifact_level:check()
union_task:check()
item_title:check()
text_content:check()
text_error:check()
text_answer:check()
text_story:check()
text_announcement:check()
text_help:check()
text_mail:check()
text_name:check()
text_sound_talk:check()

text_task:check()
text_tutor:check()
text_ui:check()
-- print(Dump(GetItemById(18000)))
print("--------- exit lua scripts ---------")
do
    return
end
-- 以下是基本表 , 只是给其他服提供服务 , 列出来只是看看还有多少表没有完成
res_image:check()
res_sound:check()
res_spine:check()
res_fashion:check()
res_video:check()




world_config:check()
config_head:check()

recharge_return:check() -- 感觉是废表
recharge_rebate:check() -- 感觉是废表
other_shop_skill:check() -- 感觉是废表
item_buff:check() -- 感觉是废表
item_artifact_extend:check() -- 感觉是废表




action_attack:check()
action_attack_effect:check()
action_attack_effect2:check()
action_camera:check()
action_displacement:check()
attribute_change:check()

config_activity_find:check()
config_activity_notice:check()
config_agility_task:check()
config_auto_bourse:check()
config_banner:check()
config_color:check()
config_get_type:check()

config_lottery:check()
config_operating_activity:check()
config_pvp_ai:check()
config_quality:check()
config_system_times:check()
config_team:check()
detection_third_party:check()
entity_attribute:check()
entity_effect:check()
entity_effect2:check()
entity_fight_value:check()

entity_npc:check()
entity_obstacle:check()
entity_pet:check()
entity_portal:check()
entity_role:check()


item_artifact_progress:check()
item_artifact_skill:check()
item_artifact_skin:check()
item_artifact_star:check()
item_artifact_starup:check()


item_competition:check()
item_competition_gift:check()
item_competition_task:check()
item_crest:check()
item_debris:check()
item_debris_change:check()
item_enchantstone:check()
item_equip_breach:check()
item_equip_common:check()
item_equip_intensify:check()
item_equip_intensify_body:check()
item_equip_intensify_value:check()
item_equip_role_type1:check()
item_equip_role_type2:check()
item_equip_role_type3:check()
item_equip_role_type4:check()
item_fashion_common:check()
item_forge:check()
item_gashapon_probability:check()
item_gashapon_reward:check()
item_gashapon_reward_preview:check()
item_gem:check()
item_gem_level:check()
item_gem_levelcost:check()
item_gift_exp:check()
item_make_equip:check()
item_make_equip_suit:check()
item_make_paper:check()

item_money:check()
item_partner:check()
item_partner_fashion:check()
item_partner_skill:check()
item_partner_star:check()
item_partner_story:check()
item_profile_role1:check()
item_profile_role2:check()
item_profile_role3:check()
item_profile_role4:check()
item_progress_material:check()
item_redpacket:check()
item_refined:check()
item_spirit:check()
item_spirit_awaken:check()
item_spirit_breakthrough:check()
item_spirit_progress:check()
item_spirit_progress_material:check()
item_spirit_star:check()
item_spirit_star_ticket:check()
item_spirit_upstars:check()
item_spirit_upstars_attribute:check()
item_spirit_value:check()
item_sprite_skill:check()
item_sprite_skill_random:check()
item_suit:check()

item_update_material:check()
lottery_artifact_area:check()
lottery_artifact_limit:check()
lottery_artifact_limit_time:check()
lottery_artifact_pond:check()
lottery_artifact_probability:check()
lottery_equipment_area:check()
lottery_equipment_pond:check()
lottery_equipment_probability:check()
lottery_fashion_area:check()
lottery_fashion_pond:check()
lottery_fashion_probability:check()
lottery_fashion_reward:check()
lottery_limit_time_points:check()
lottery_limit_time_rank:check()
lottery_spirit_area:check()
lottery_spirit_pond:check()
lottery_spirit_probability:check()
lottery_spirit_sniper:check()
map_activity_chapter:check()
map_activity_copy:check()
map_camp:check()
map_chapter:check()
map_city:check()
map_copy:check()
map_copy_bestdrop:check()
map_copy_card:check()
map_copy_main:check()
map_copy_main_task:check()
map_country:check()
map_data:check()
map_province:check()
map_room:check()
map_room2:check()
map_room3:check()
map_stage:check()
map_stage_appraise:check()
name_first:check()
name_man:check()
name_woman:check()
other_7days_activity_award:check()
other_7days_activity_task:check()
other_7days_sign:check()
other_across_server_arena:check()
other_across_server_arena_award:check()
other_across_server_arena_robot:check()
other_across_server_group:check()
other_activity_atlas:check()
other_activity_dimensiontrial_rewards:check()
other_activity_dimension_trial:check()
other_activity_instance_sign:check()
other_activity_linkage_task:check()
other_activity_menu:check()
other_activity_sign:check()
other_activity_task:check()
other_activity_trial:check()
other_activity_trial_config:check()
other_activity_trial_rewards:check()
other_allstar_rac_gift:check()
other_arena:check()
other_arena_award:check()
other_arena_robot:check()
other_artifactway:check()
other_artifact_comboskill:check()
other_artifact_skin:check()
other_auction:check()
other_auction_condition:check()
other_auction_pool:check()
other_awake_road:check()
other_backflow_gift:check()
other_backflow_recharge:check()
other_backflow_sign:check()
other_backflow_task:check()
other_battlepass_config:check()
other_battlepass_level:check()
other_battlepass_system_level:check()
other_bossrush:check()
other_bossrush_award:check()
other_bossrush_buff:check()
other_boss_skills:check()
other_bourse:check()
other_cashcow:check()
other_chat_expression:check()
other_chat_title:check()
other_coin_tree:check()
other_college_award:check()
other_college_task:check()
other_commonfunction:check()
other_constellation_buff_base:check()
other_constellation_buff_random:check()
other_constellation_floor:check()
other_constellation_reincarnation:check()
other_constellation_stage:check()
other_dailytask:check()
other_dailytask_config:check()
other_daily_activity:check()
other_daily_liveness_reward:check()
other_daily_liveness_task:check()
other_daily_reward:check()
other_data_collect:check()
other_dimension_copy:check()
other_dimension_drop:check()
other_dimension_reward:check()
other_dimension_task:check()
other_drop:check()
other_enemyattack:check()
other_enemyattack_random:check()
other_everyday_online_task:check()
other_exchange:check()
other_exp:check()
other_expedition:check()
other_formula_config:check()
other_freegifts:check()
other_gashapon:check()
other_gashapon_collect:check()
other_gashapon_task:check()
other_gemstone_tower:check()
other_get_stronger:check()
other_get_stronger_module:check()
other_get_stronger_task:check()
other_godchoose_config:check()
other_godchoose_level:check()
other_godchoose_task:check()
other_growup_gift:check()
other_Infinite:check()
other_Infinite_car:check()
other_Infinite_drop:check()
other_Infinite_fast_drop:check()
other_Infinite_gift:check()
other_Infinite_lv:check()
other_levelreward:check()
other_level_guide:check()
other_level_limit:check()
other_limit:check()
other_limitchallenge_boxlevelup:check()
other_limitchallenge_boxreward:check()
other_limit_exchange:check()
other_limit_gift:check()
other_mail:check()
other_maincitybutton:check()
other_message_push:check()
other_money_tower:check()
other_month_sign:check()
other_nest:check()
other_nest_card:check()
other_open_server_online_task:check()
other_open_server_upgrade_task:check()
other_partner_arms:check()
other_partner_exp:check()
other_powers:check()
other_powers_core:check()
other_pvp_award:check()
other_pvp_config:check()
other_questionnaire:check()
other_ranktitle:check()
other_rapidlychallenge:check()
other_rapidlychallenge_task:check()
other_resources_gift:check()
other_resource_retrieval:check()
other_resource_stage:check()
other_shop:check()
other_shop_fashionbox:check()
other_shop_main:check()

other_sound_talk:check()
other_spirit_grade:check()
other_spirit_level:check()
other_story:check()
other_story_data:check()
other_story_set:check()
other_strategy:check()
other_strategy_task:check()
other_superskill:check()
other_superskill_level:check()
other_superskill_star:check()
other_superskill_starup:check()
other_superskill_studybuff:check()
other_system_menu:check()
other_system_new_menu:check()
other_task:check()
other_tower:check()
other_transfer_data:check()
other_trial:check()
other_trial_rank:check()
other_trial_worldboss:check()
other_vip:check()
other_vip_tip:check()
other_worldboss:check()
other_worldboss_auction:check()
other_worldboss_rank:check()
push_system_massage:check()
pvp_activity_rewards:check()
pvp_ladder_score:check()
pvp_ladder_top_reward:check()
pvp_match_score_plus:check()
pvp_score_steak_coefficient:check()
recharge_accumulative:check()
recharge_card:check()
recharge_daily_gift:check()
recharge_everyday:check()
recharge_frist_rewards:check()
recharge_fund:check()
recharge_main:check()
recharge_official_account_gift:check()

server_enterkey:check()
skill_ai:check()
skill_attack:check()
skill_attribute_damage:check()
skill_change_system:check()
skill_chip:check()
skill_hit:check()
skill_hurt:check()
skill_leaf:check()
skill_recommend:check()
skill_rock:check()
skill_tree:check()
sound_map_spine:check()
sound_sendmessage:check()
sound_spine:check()
sound_spine_bgm:check()
sound_ui:check()
specialability_base:check()






tutor_func_priority:check()
tutor_process:check()
tutor_tips:check()
union_achievement_redpacket:check()
union_activity:check()
union_activity_rank:check()
union_base:check()
union_boss_chapter:check()
union_boss_stage:check()
union_citywar:check()
union_competition:check()
union_competition_city:check()
union_competition_coordinate:check()
union_competition_formula:check()
union_competition_merit:check()
union_competition_show:check()
union_crystal:check()
union_crystal_other:check()
union_goalkeeper:check()
union_goalkeeper_rank:check()
union_positon:check()
union_salary:check()
union_salary_gift:check()
union_sign:check()
union_sign_gift:check()
union_sign_redpacket:check()
union_skill:check()



