import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a section of the application settings
@immutable
abstract class SettingsSection extends TdObject {
  const SettingsSection();

  static const String constructor = 'settingsSection';

  /// Inherited by:
  /// [SettingsSectionAppearance]
  /// [SettingsSectionAskQuestion]
  /// [SettingsSectionBusiness]
  /// [SettingsSectionChatFolders]
  /// [SettingsSectionDataAndStorage]
  /// [SettingsSectionDevices]
  /// [SettingsSectionEditProfile]
  /// [SettingsSectionFaq]
  /// [SettingsSectionFeatures]
  /// [SettingsSectionInAppBrowser]
  /// [SettingsSectionLanguage]
  /// [SettingsSectionMyGrams]
  /// [SettingsSectionMyStars]
  /// [SettingsSectionNotifications]
  /// [SettingsSectionPowerSaving]
  /// [SettingsSectionPremium]
  /// [SettingsSectionPrivacyAndSecurity]
  /// [SettingsSectionPrivacyPolicy]
  /// [SettingsSectionQrCode]
  /// [SettingsSectionSearch]
  /// [SettingsSectionSendGift]
  static SettingsSection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SettingsSectionAppearance.constructor:
        return SettingsSectionAppearance.fromJson(json);
      case SettingsSectionAskQuestion.constructor:
        return SettingsSectionAskQuestion.fromJson(json);
      case SettingsSectionBusiness.constructor:
        return SettingsSectionBusiness.fromJson(json);
      case SettingsSectionChatFolders.constructor:
        return SettingsSectionChatFolders.fromJson(json);
      case SettingsSectionDataAndStorage.constructor:
        return SettingsSectionDataAndStorage.fromJson(json);
      case SettingsSectionDevices.constructor:
        return SettingsSectionDevices.fromJson(json);
      case SettingsSectionEditProfile.constructor:
        return SettingsSectionEditProfile.fromJson(json);
      case SettingsSectionFaq.constructor:
        return SettingsSectionFaq.fromJson(json);
      case SettingsSectionFeatures.constructor:
        return SettingsSectionFeatures.fromJson(json);
      case SettingsSectionInAppBrowser.constructor:
        return SettingsSectionInAppBrowser.fromJson(json);
      case SettingsSectionLanguage.constructor:
        return SettingsSectionLanguage.fromJson(json);
      case SettingsSectionMyGrams.constructor:
        return SettingsSectionMyGrams.fromJson(json);
      case SettingsSectionMyStars.constructor:
        return SettingsSectionMyStars.fromJson(json);
      case SettingsSectionNotifications.constructor:
        return SettingsSectionNotifications.fromJson(json);
      case SettingsSectionPowerSaving.constructor:
        return SettingsSectionPowerSaving.fromJson(json);
      case SettingsSectionPremium.constructor:
        return SettingsSectionPremium.fromJson(json);
      case SettingsSectionPrivacyAndSecurity.constructor:
        return SettingsSectionPrivacyAndSecurity.fromJson(json);
      case SettingsSectionPrivacyPolicy.constructor:
        return SettingsSectionPrivacyPolicy.fromJson(json);
      case SettingsSectionQrCode.constructor:
        return SettingsSectionQrCode.fromJson(json);
      case SettingsSectionSearch.constructor:
        return SettingsSectionSearch.fromJson(json);
      case SettingsSectionSendGift.constructor:
        return SettingsSectionSendGift.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
