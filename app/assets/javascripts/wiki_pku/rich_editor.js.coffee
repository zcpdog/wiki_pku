#= require baidu_ueditor
#= require wiki_pku/ueditor_custom_config

jQuery ->
	if $("#experience_content").length>0
		new UE.ui.Editor({ initialFrameHeight:300}).render("experience_content")
	if $("#deal_content").length>0
		new UE.ui.Editor({ initialFrameHeight:300}).render("deal_content")
	if $("#discovery_content").length>0
		new UE.ui.Editor({ initialFrameHeight:300}).render("discovery_content")
	if $("#entry_content").length>0
		new UE.ui.Editor({ initialFrameHeight:300}).render("entry_content")