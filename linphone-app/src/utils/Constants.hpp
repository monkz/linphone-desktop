/*
 * Copyright (c) 2021 Belledonne Communications SARL.
 *
 * This file is part of linphone-desktop
 * (see https://www.linphone.org).
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef CONSTANTS_H_
#define CONSTANTS_H_

#include <QObject>
#include <QString>
#include <QDir>

#include "config.h"

// =============================================================================

class Constants : public QObject{
	Q_OBJECT
public:
	Constants(QObject * parent = nullptr) : QObject(parent){}
	
	//----------------------------------------------------------------------------------	
	
	static constexpr char WindowIconPath[] = ":/assets/images/linphone_logo.svg";
	static constexpr char DefaultLocale[] = "en";
		
	static constexpr char ApplicationMinimalQtVersion[] = "5.10.0";
	static constexpr char DefaultFont[] = "Noto Sans";
	
	static constexpr size_t MaxLogsCollectionSize = 10485760*5; // 50MB.
	
	
#ifdef ENABLE_UPDATE_CHECK
	static constexpr int VersionUpdateCheckInterval = 86400000; // 24 hours in milliseconds.
#endif // ifdef ENABLE_UPDATE_CHECK
	
	static constexpr char DefaultXmlrpcUri[] = "https://subscribe.linphone.org:444/wizard.php";
	static constexpr char LinphoneDomain[] = "sip.linphone.org";
	static constexpr char DefaultContactParameters[] = "message-expires=604800";
	static constexpr char DefaultContactParametersOnRemove[] = "message-expires=0";
	static constexpr int DefaultExpires = 3600;
	static constexpr char DownloadUrl[] = "https://www.linphone.org/technical-corner/linphone";
	static constexpr char VersionCheckReleaseUrl[] = "https://linphone.org/releases";
	static constexpr char VersionCheckNightlyUrl[] = "https://linphone.org/snapshots";
	static constexpr char PasswordRecoveryUrl[] = "https://subscribe.linphone.org/login";
	static constexpr char CguUrl[] = "https://www.linphone.org/general-terms";
	static constexpr char PrivatePolicyUrl[] = "https://www.linphone.org/privacy-policy";
	static constexpr char ContactUrl[] = "https://www.linphone.org/contact";
	static constexpr char TranslationUrl[] = "https://weblate.linphone.org/projects/linphone-desktop/";
	
	static constexpr int MaxMosaicParticipants = 6;// From 7, the mosaic quality will be limited to avoid useless computations
	
	static constexpr char LinphoneBZip2_exe[] = "https://www.linphone.org/releases/windows/tools/bzip2/bzip2.exe";
	static constexpr char LinphoneBZip2_dll[] = "https://www.linphone.org/releases/windows/tools/bzip2/bzip2.dll";
	static constexpr char DefaultRlsUri[] = "sips:rls@sip.linphone.org";
	static constexpr char DefaultLogsEmail[] = "linphone-desktop@belledonne-communications.com";
	static constexpr char DefaultConferenceURI[] = "sip:conference-factory@sip.linphone.org";
	static constexpr char DefaultVideoConferenceURI[] = "sip:videoconference-factory@sip.linphone.org";
	static constexpr char DefaultLimeServerURL[] = "https://lime.linphone.org/lime-server/lime-server.php";
	
	static constexpr char DefaultFlexiAPIURL[] = "http://fs-test-sandbox.linphone.org/flexiapi/api/";// Need "/" at the end
	static constexpr char RemoteProvisioningURL[] = "http://fs-test-sandbox.linphone.org/flexiapi/provisioning";
	
	Q_PROPERTY(QString PasswordRecoveryUrl MEMBER PasswordRecoveryUrl CONSTANT)
	Q_PROPERTY(QString CguUrl MEMBER CguUrl CONSTANT)
	Q_PROPERTY(QString PrivatePolicyUrl MEMBER PrivatePolicyUrl CONSTANT)
	Q_PROPERTY(QString ContactUrl MEMBER ContactUrl CONSTANT)
	Q_PROPERTY(QString TranslationUrl MEMBER TranslationUrl CONSTANT)
	Q_PROPERTY(int maxMosaicParticipants MEMBER MaxMosaicParticipants CONSTANT)

// For Webviews
	static constexpr char DefaultAssistantRegistrationUrl[] = "https://subscribe.linphone.org/register";
	static constexpr char DefaultAssistantLoginUrl[] = "https://subscribe.linphone.org/login";
	static constexpr char DefaultAssistantLogoutUrl[] = "https://subscribe.linphone.org/logout";
//--------------

	// Max image size in bytes. (100Kb)
	static constexpr qint64 MaxImageSize = 102400;// In Bytes.
	static constexpr qint64 FileSizeLimit = 524288000;// In Bytes.
	static constexpr int ThumbnailImageFileWidth = 100;
	static constexpr int ThumbnailImageFileHeight = 100;

	static constexpr char PathAssistantConfig[] = "/" EXECUTABLE_NAME "/assistant/";
	static constexpr char PathAvatars[] = "/avatars/";
	static constexpr char PathCaptures[] = "/" EXECUTABLE_NAME "/captures/";
	static constexpr char PathCodecs[] =  "/codecs/";
	static constexpr char PathData[] =  "/" EXECUTABLE_NAME;
	static constexpr char PathTools[] =  "/tools/";
	static constexpr char PathLogs[] = "/logs/";
#ifdef APPLE
	static constexpr char PathPlugins[] = "/Plugins/";
#else
	static constexpr char PathPlugins[] = "/plugins/";
#endif
	static constexpr char PathPluginsApp[] = "app/";
	static constexpr char PathSounds[] = "/sounds/" EXECUTABLE_NAME;
	static constexpr char PathThumbnails[] = "/thumbnails/";
	static constexpr char PathUserCertificates[] = "/usr-crt/";
	
	static constexpr char PathCallHistoryList[] = "/call-history.db";
	static constexpr char PathConfig[] = "/linphonerc";
	static constexpr char PathDatabase[] = "/linphone.db";
	static constexpr char PathFactoryConfig[] = "/" EXECUTABLE_NAME "/linphonerc-factory";
	static constexpr char PathRootCa[] = "/" EXECUTABLE_NAME "/rootca.pem";
	static constexpr char PathFriendsList[] = "/friends.db";
	static constexpr char PathLimeDatabase[] = "/x3dh.c25519.sqlite3";
	static constexpr char PathMessageHistoryList[] = "/message-history.db";
	static constexpr char PathZrtpSecrets[] = "/zidcache";
	
	static constexpr char LanguagePath[] = ":/languages/";
	
	// The main windows of Linphone desktop.
	static constexpr char QmlViewMainWindow[] = "qrc:/ui/views/App/Main/MainWindow.qml";
	static constexpr char QmlViewCallsWindow[] = "qrc:/ui/views/App/Calls/CallsWindow.qml";
	static constexpr char QmlViewSettingsWindow[] = "qrc:/ui/views/App/Settings/SettingsWindow.qml";
	
	static constexpr char MainQmlUri[] = "Linphone";
	
	static constexpr char AttachVirtualWindowMethodName[] = "attachVirtualWindow";
	static constexpr char AboutPath[] = "qrc:/ui/views/App/Main/Dialogs/About.qml";
	
	static constexpr char AssistantViewName[] = "Assistant";
	
	static constexpr char QtDomain[] = "qt";
	static constexpr char SrcPattern[] = "/src/";
	static constexpr char LinphoneLocaleEncoding[] = "UTF-8";// Alternative is to use "locale"
	static constexpr char VcardScheme[] = EXECUTABLE_NAME "-desktop:/";
	static constexpr int CbsCallInterval = 20;
	static constexpr char RcVersionName[] = "rc_version";
	static constexpr int RcVersionCurrent = 5;	// 2 = Conference URI
												// 3 = CPIM on basic chat rooms
												// 4 = RTP bundle mode
												// 5 = Video Conference URI
												
	
//--------------------------------------------------------------------------------	
//								CISCO
//--------------------------------------------------------------------------------
#if defined(Q_OS_LINUX) || defined(Q_OS_WIN)
	static constexpr char H264Description[] = "Provided by CISCO SYSTEM,INC";
#endif // if defined(Q_OS_LINUX) || defined(Q_OS_WIN)
	
#ifdef Q_OS_LINUX
	static constexpr char LibraryExtension[] = "so";
	static constexpr char H264InstallName[] = "libopenh264.so";
#ifdef Q_PROCESSOR_X86_64
	static constexpr char PluginUrlH264[] = "http://ciscobinary.openh264.org/libopenh264-2.2.0-linux64.6.so.bz2";
	static constexpr char PluginH264Check[] = "45ba1aaeb6213c19cd9622b79788e16b05beabc4d16a3a74e57f046a0826fd77";
#else
	static constexpr char PluginUrlH264[] = "http://ciscobinary.openh264.org/libopenh264-2.2.0-linux32.6.so.bz2";
	static constexpr char PluginH264Check[] = "bf18e0e79c4a23018b0ea5ad6d7dd14fd1b6a6189d2f88fd56dece019fc415c8";
#endif // ifdef Q_PROCESSOR_X86_64
#elif defined(Q_OS_WIN)
	static constexpr char LibraryExtension[] = "dll";
	static constexpr char H264InstallName[] = "openh264.dll";
#ifdef Q_OS_WIN64
	static constexpr char PluginUrlH264[] = "http://ciscobinary.openh264.org/openh264-2.2.0-win64.dll.bz2";
	static constexpr char PluginH264Check[] = "799e08c418b6cdeadfbe18d027392158face4a5c901d41f83712a20f0d41ad7d";
#else
	static constexpr char PluginUrlH264[] = "http://ciscobinary.openh264.org/openh264-2.2.0-win32.dll.bz2";
	static constexpr char PluginH264Check[] = "2205097a3a309271e15879b25a905eb290cfdd7fd7a8a0c1037e0458e5dc1f21";
#endif // ifdef Q_OS_WIN64
#endif // ifdef Q_OS_LINUX

//--------------------------------------------------------------------------------	
};

#endif
