return {
	bot_api_key = '201987057:AAHC8i8OI-0EfCc4bt_lFvU3Gk0edypRtLA', --token
	bot_api_key = '',
	google_api_key = '',
	google_cse_key = '',
	lastfm_api_key = '',
	owm_api_key = '',
	biblia_api_key = '',
	thecatapi_key = '',
	nasa_api_key = '',
	yandex_key = '',
	simsimi_key = '',
	simsimi_trial = true,
	time_offset = 0,
	lang = 'en',
	-- If you change this, make sure you also modify launch-tg.sh.
	cli_port = 4567,
	admin = 52038630,
	admin_name = 'Ryan Gmor',
	log_chat = nil,
	about_text = [[

]]	,
	errors = {
		connection = 'Connection error.',
		results = 'No results found.',
		argument = 'Invalid argument.',
		syntax = 'Invalid syntax.',
		chatter_connection = 'I don\'t feel like talking right now.',
		chatter_response = 'I don\'t know what to say to that.'
	},
	greetings = {
		['Hello, #NAME.'] = {
			'hello',
			'hey',
			'sup',
			'hi',
			'good morning',
			'good day',
			'good afternoon',
			'good evening'
		},
		['Goodbye, #NAME.'] = {
			'bye',
			'later',
			'see ya',
			'good night'
		},
		['Welcome back, #NAME.'] = {
			'i\'m home',
			'i\'m back'
		},
		['You\'re welcome, #NAME.'] = {
			'thanks',
			'thank you'
		}
	},
	moderation = {
		admins = {
			['52038630'] = 'RyanGmor'
		},
		errors = {
			antisquig = 'This group is English-only.',
			moderation = 'I do not moderate this group.',
			not_mod = 'This command must be run by a moderator.',
			not_admin = 'This command must be run by an administrator.',
		},
		admin_group = -00000000,
		realm_name = 'My Realm',
		antisquig = false
	},
	plugins = {
		'Block.lua',
		'Help.lua',
		'PV.lua'
	}
}
