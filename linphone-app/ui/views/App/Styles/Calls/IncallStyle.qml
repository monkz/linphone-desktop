pragma Singleton
import QtQml 2.2
import QtQuick 2.7

import Units 1.0
import ColorsList 1.0

// =============================================================================

QtObject {
	property string sectionName: 'Incall'
	property color backgroundColor: ColorsList.add(sectionName+'_bg', 'conference_bg').color
	property color fullBackgroundColor: ColorsList.add(sectionName+'_fullscreen_bg', 'fullscreen_conference_bg').color
	property color buzyColor: ColorsList.add(sectionName+'_indicator', 'q').color
	
	property QtObject title: QtObject {
		property color color: ColorsList.add(sectionName+'_title', 'q').color
		property int pointSize: Units.dp * 12
		property int addressPointSize: Units.dp * 10
	}
	property QtObject recordWarning: QtObject{
		property string icon: 'record_custom'
		property color iconColor: ColorsList.add(sectionName+'_warning', 'i').color
		property int iconSize: 30
		property color color: ColorsList.add(sectionName+'_warning_fg', 'q').color	
		property int pointSize: Units.dp * 9
	}
	property QtObject grid: QtObject {
		property int spacing: 5
		
		property QtObject cell: QtObject {
			property int height: 145
			property int spacing: 5
			property int width: 154
			
			property QtObject contactDescription: QtObject {
				property color color: ColorsList.add(sectionName+'_username', 'q').color
				property int pointSize: Units.dp * 12
				property int weight: Font.Bold
			}
		}
	}
	property QtObject pauseArea: QtObject {
		property color backgroundColor: ColorsList.add(sectionName+'_paused_bg', 'l50').color
		property QtObject title: QtObject{
			property color color: ColorsList.add(sectionName+'_paused_title', 'q').color
			property int pointSize: Units.dp * 12
			property int weight: Font.Bold
		}
		property QtObject description: QtObject{
			property color color: ColorsList.add(sectionName+'_paused_description', 'q').color
			property int pointSize: Units.dp * 9
			property int weight: Font.Medium
		}
		property QtObject play: QtObject {
				property int iconSize: 240
				property string icon : 'play_custom'
				property string name : 'paused_play'
				property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 's_p_b_bg').color
				property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 's_h_b_bg').color
				property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 's_n_b_bg').color
				property color backgroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_u', icon, 's_p_b_bg').color
				property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 's_p_b_fg').color
				property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 's_h_b_fg').color
				property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 's_n_b_fg').color
				property color foregroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_u', icon, 's_p_b_fg').color
			}
	}
	property QtObject actionArea: QtObject {
		property int height: 100
		property int iconSize: 40
		property int leftButtonsGroupMargin: 50
		property int lowWidth: 650
		property int rightButtonsGroupMargin: 50
		
		property QtObject userVideo: QtObject {
			property int height: 200
			property int width: 130
			property int heightReference: 1200 // height and width are fixed from these references
			property int widthReference: 780
		}
		
		property QtObject vu: QtObject {
			property int spacing: 5
		}
		
		property QtObject callError: QtObject {
			property color color: ColorsList.add(sectionName+'_action_error', 'i').color
			property int pointSize: Units.dp * 12
		}
	}
	
	property QtObject container: QtObject {
		property int margins: 15
		
		property QtObject avatar: QtObject {
			property color stickerBackgroundColor: ColorsList.add(sectionName+'_container_avatar_sticker_bg', 'conference_avatar_sticker_bg').color
			property color stickerPreviewBackgroundColor: ColorsList.add(sectionName+'_container_avatar_preview_sticker_bg', 'conference_avatar_preview_sticker_bg').color
			property color backgroundColor: ColorsList.add(sectionName+'_container_avatar_initials_bg', 'conference_avatar_initials_bg').color
			
			property int maxSize: 300
		}
		
		property QtObject pause: QtObject {
			property color color: ColorsList.add(sectionName+'_container_pause', 'g90').color
			
			property QtObject text: QtObject {
				property color color: ColorsList.add(sectionName+'_container_pause_text', 'q').color
				property int pointSizeFactor: 5
			}
		}
	}
	
	property QtObject header: QtObject {
		property int buttonIconSize: 40
		property int iconSize: 16
		property int leftMargin: 20
		property int rightMargin: 20
		property int spacing: 10
		property int topMargin: 26
		
		property QtObject contactDescription: QtObject {
			property int height: 50
			property int width: 150
		}
		
		property QtObject elapsedTime: QtObject {
			property color color: ColorsList.add(sectionName+'_header_elapsed_time', 'j').color
			property int pointSize: Units.dp * 10
			
			property QtObject fullscreen: QtObject {
				property int pointSize: Units.dp * 12
			}
		}
		
		property QtObject stats: QtObject {
			property int relativeY: 90
		}
		
		property QtObject messageBanner: QtObject{
			property color color: ColorsList.add(sectionName+'_message_bg', 'incall_message_banner_bg').color
			property color textColor: ColorsList.add(sectionName+'_message_fg', 'incall_message_banner_fg').color
			property int pointSize: Units.dp * 10
		}
	}
	
	property QtObject zrtpArea: QtObject {
		property int height: 50
		
		property QtObject buttons: QtObject {
			property int spacing: 10
		}
		
		property QtObject text: QtObject {
			property color colorA: ColorsList.add(sectionName+'_zrtp_text_a', 'j').color
			property color colorB: ColorsList.add(sectionName+'_zrtp_text_b', 'i').color
			property int pointSize: Units.dp * 10
			property int wordsSpacing: 5
		}
	}
	// Button colors	
	property QtObject buttons: QtObject {
		property QtObject callsList: QtObject {
			property int iconSize: 40
			property string name : 'callsList'
			property string icon : 'call_menu_custom'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 's_n_b_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 's_h_b_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 's_p_b_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 's_n_b_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 's_h_b_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 's_p_b_fg').color
		}
		property QtObject dialpad: QtObject {
			property int iconSize: 40
			property string name : 'dialpad'
			property string icon : 'dialpad_custom'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 's_n_b_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 's_h_b_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 's_p_b_bg').color
			property color backgroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_c', icon, 's_p_b_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 's_n_b_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 's_h_b_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 's_p_b_fg').color
			property color foregroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_c', icon, 's_p_b_fg').color
		}
		property QtObject callQuality: QtObject {
			property int iconSize: 40
			property string name : 'quality'
			property string icon_0 : 'call_quality_0_custom'
			property string icon_1 : 'call_quality_1_custom'
			property string icon_2 : 'call_quality_2_custom'
			property string icon_3 : 'call_quality_3_custom'
			property string icon_4 : 'call_quality_4_custom'
			
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon_2, 's_n_b_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon_2, 's_h_b_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon_2, 's_p_b_bg').color
			property color backgroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_c', icon_2, 's_p_b_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon_2, 's_n_b_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon_2, 's_h_b_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon_2, 's_p_b_fg').color
			property color foregroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_c', icon_2, 's_p_b_fg').color
		}
		property QtObject screenSharing: QtObject {
			property int iconSize: 40
			property string icon : 'screen_sharing_custom'
			property string name : 'screenSharing'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 's_n_b_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 's_h_b_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 's_p_b_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 's_n_b_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 's_h_b_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 's_p_b_fg').color
		}
		property QtObject record: QtObject {
			property int iconSize: 40
			property string icon : 'record_custom'
			property string name : 'record'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 's_n_b_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 's_h_b_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 's_p_b_bg').color
			property color backgroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_c', icon, 's_p_b_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 's_n_b_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 's_h_b_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 's_p_b_fg').color
			property color foregroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_c', icon, 's_p_b_fg').color
		}
		property QtObject screenshot: QtObject {
			property int iconSize: 40
			property string icon : 'screenshot_custom'
			property string name : 'screenshot'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 's_n_b_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 's_h_b_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 's_p_b_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 's_n_b_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 's_h_b_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 's_p_b_fg').color
		}
		property QtObject fullscreen: QtObject {
			property int iconSize: 40
			property string icon : 'fullscreen_custom'
			property string name : 'fullscreen'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 's_n_b_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 's_h_b_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 's_p_b_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 's_n_b_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 's_h_b_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 's_p_b_fg').color
		}
		property QtObject stopFullscreen: QtObject {
			property int iconSize: 40
			property string icon : 'stop_fullscreen_custom'
			property string name : 'stopFullscreen'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 's_n_b_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 's_h_b_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 's_p_b_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 's_n_b_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 's_h_b_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 's_p_b_fg').color
		}
//------------------------------------------------------------------------------
		property QtObject secure: QtObject {
			property int buttonSize: 40
			property int iconSize: 20
			property string icon : 'secure_on'
			property string name : 'secure'
			
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, '', '', '#66727B').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, '', '', '#66727B').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, '', '', '#66727B').color
			property color backgroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_c', icon, '', '', '#66727B').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 's').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 's').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 's').color
			property color foregroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_c', icon, 's').color
		}
		property QtObject postQuantumSecure: QtObject {
			property int buttonSize: 40
			property int iconSize: 20
			property string icon : 'secure_pq_zrtp'
			property string name : 'secure_pq_zrtp'
			
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, '', '', '#66727B').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, '', '', '#66727B').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, '', '', '#66727B').color
			property color backgroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_c', icon, '', '', '#66727B').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 's').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 's').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 's').color
			property color foregroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_c', icon, 's').color
		}
		property QtObject unsecure: QtObject {
			property int buttonSize: 40
			property int iconSize: 20
			property string icon : 'call_chat_unsecure_custom'
			property string name : 'unsecure'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 'me_n_b_inv_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 'me_h_b_inv_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 'me_p_b_inv_bg').color
			property color backgroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_c', icon, 'me_c_b_inv_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 'unsecure').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 'unsecure').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 'unsecure').color
			property color foregroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_c', icon, 'unsecure').color
			
		}
		property QtObject microOn: QtObject {
			property int iconSize: 40
			property string icon : 'micro_on_custom'
			property string name : 'microOn'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 's_h_b_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 's_n_b_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 's_p_b_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 's_h_b_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 's_n_b_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 's_p_b_fg').color
		}
		property QtObject microOff: QtObject {
			property int iconSize: 40
			property string icon : 'micro_off_custom'
			property string name : 'microOff'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 's_h_b_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 's_n_b_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 's_p_b_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 's_h_b_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 's_n_b_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 's_p_b_fg').color
		}
		property QtObject speakerOn: QtObject {
			property int iconSize: 40
			property string icon : 'speaker_on_custom'
			property string name : 'speakerOn'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 's_h_b_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 's_n_b_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 's_p_b_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 's_h_b_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 's_n_b_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 's_p_b_fg').color
		}
		property QtObject speakerOff: QtObject {
			property int iconSize: 40
			property string icon : 'speaker_off_custom'
			property string name : 'speakerOff'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 's_h_b_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 's_n_b_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 's_p_b_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 's_h_b_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 's_n_b_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 's_p_b_fg').color
		}
		property QtObject cameraOn: QtObject {
			property int iconSize: 40
			property string icon : 'camera_on_custom'
			property string name : 'cameraOn'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 's_h_b_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 's_n_b_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 's_p_b_bg').color
			property color backgroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_u', icon, 's_p_b_bg').color
			property color backgroundDisabledColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_d', icon, 's_d_b_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 's_h_b_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 's_n_b_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 's_p_b_fg').color
			property color foregroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_u', icon, 's_p_b_fg').color
			property color foregroundDisabledColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_d', icon, 's_d_b_fg').color
		}
		property QtObject cameraOff: QtObject {
			property int iconSize: 40
			property string icon : 'camera_off_custom'
			property string name : 'cameraOff'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 's_h_b_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 's_n_b_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 's_p_b_bg').color
			property color backgroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_u', icon, 's_p_b_bg').color
			property color backgroundDisabledColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_d', icon, 's_d_b_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 's_h_b_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 's_n_b_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 's_p_b_fg').color
			property color foregroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_u', icon, 's_p_b_fg').color
			property color foregroundDisabledColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_d', icon, 's_d_b_fg').color
		}
		property QtObject pause: QtObject {
			property int iconSize: 40
			property string icon : 'pause_custom'
			property string name : 'pause'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 's_n_b_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 's_h_b_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 's_p_b_bg').color
			property color backgroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_u', icon, 's_p_b_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 's_n_b_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 's_h_b_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 's_p_b_fg').color
			property color foregroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_u', icon, 's_p_b_fg').color
		}
		property QtObject play: QtObject {
			property int iconSize: 40
			property string icon : 'play_custom'
			property string name : 'play'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 's_n_b_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 's_h_b_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 's_p_b_bg').color
			property color backgroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_u', icon, 's_p_b_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 's_n_b_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 's_n_b_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 's_p_b_fg').color
			property color foregroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_u', icon, 's_p_b_fg').color
		}
		property QtObject hangup: QtObject {
			property int iconSize: 40
			property string icon : 'hangup_custom'
			property string name : 'hangup'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 'r_n_b_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 'r_h_b_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 'r_p_b_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 'r_n_b_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 'r_h_b_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 'r_p_b_fg').color
		}
//------------------------------------------------------------------------------
		property QtObject chat: QtObject {
			property int iconSize: 40
			property string icon : 'chat_custom'
			property string name : 'chat'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 'me_n_b_inv_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 'me_h_b_inv_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 'me_p_b_inv_bg').color
			property color backgroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_c', icon, 'me_c_b_inv_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 'me_n_b_inv_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 'me_h_b_inv_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 'me_p_b_inv_fg').color
			property color foregroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_c', icon, 'me_c_b_inv_fg').color
		}
		property QtObject participants: QtObject {
			property int iconSize: 40
			property string icon : 'participants_custom'
			property string name : 'participants'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 'me_n_b_inv_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 'me_h_b_inv_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 'me_p_b_inv_bg').color
			property color backgroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_c', icon, 'me_c_b_inv_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 'me_n_b_inv_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 'me_h_b_inv_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 'me_p_b_inv_fg').color
			property color foregroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_c', icon, 'me_c_b_inv_fg').color
		}
		
		property QtObject options: QtObject {
			property int iconSize: 40
			property string icon : 'menu_vdots_custom'
			property string name : 'options'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 'me_n_b_inv_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 'me_h_b_inv_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 'me_p_b_inv_bg').color
			property color backgroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_c', icon, 'me_c_b_inv_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 'me_n_b_inv_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 'me_h_b_inv_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 'me_p_b_inv_fg').color
			property color foregroundUpdatingColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_c', icon, 'me_c_b_inv_fg').color
		}
//------------------------------------------------------------------------------
		property QtObject closePreview: QtObject {
			property int iconSize: 40
			property string icon : 'close_custom'
			property string name : 'close_preview'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 'me_n_b_inv_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 'me_h_b_inv_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 'me_p_b_inv_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 'me_n_b_inv_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 'me_h_b_inv_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 'me_p_b_inv_fg').color
		}
//------------------------------------------------------------------------------		
		
		
		property QtObject history: QtObject {
			property int iconSize: 40
			property string icon : 'history_custom'
			property string name : 'history'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 's_n_b_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 's_h_b_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 's_p_b_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 's_n_b_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 's_h_b_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 's_p_b_fg').color
		}
		
		
		property QtObject acceptVideoCall: QtObject {
			property int iconSize: 40
			property string icon : 'video_call_accept_custom'
			property string name : 'videoCallAccept'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 'a_n_b_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 'a_h_b_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 'a_p_b_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 'a_n_b_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 'a_h_b_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 'a_p_b_fg').color
		}
		property QtObject acceptCall: QtObject {
			property int iconSize: 40
			property string icon : 'call_accept_custom'
			property string name : 'callAccept'
			property color backgroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_n', icon, 'a_n_b_bg').color
			property color backgroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_h', icon, 'a_h_b_bg').color
			property color backgroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_bg_p', icon, 'a_p_b_bg').color
			property color foregroundNormalColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_n', icon, 'a_n_b_fg').color
			property color foregroundHoveredColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_h', icon, 'a_h_b_fg').color
			property color foregroundPressedColor : ColorsList.addImageColor(sectionName+'_'+name+'_fg_p', icon, 'a_p_b_fg').color
		}
	}
}
