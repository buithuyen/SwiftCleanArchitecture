//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
public struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap { Locale(identifier: $0) } ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)

  /// Find first language and bundle for which the table exists
  fileprivate static func localeBundle(tableName: String, preferredLanguages: [String]) -> (Foundation.Locale, Foundation.Bundle)? {
    // Filter preferredLanguages to localizations, use first locale
    var languages = preferredLanguages
      .map { Locale(identifier: $0) }
      .prefix(1)
      .flatMap { locale -> [String] in
        if hostingBundle.localizations.contains(locale.identifier) {
          if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
            return [locale.identifier, language]
          } else {
            return [locale.identifier]
          }
        } else if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
          return [language]
        } else {
          return []
        }
      }

    // If there's no languages, use development language as backstop
    if languages.isEmpty {
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages = [developmentLocalization]
      }
    } else {
      // Insert Base as second item (between locale identifier and languageCode)
      languages.insert("Base", at: 1)

      // Add development language as backstop
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages.append(developmentLocalization)
      }
    }

    // Find first language for which table exists
    // Note: key might not exist in chosen language (in that case, key will be shown)
    for language in languages {
      if let lproj = hostingBundle.url(forResource: language, withExtension: "lproj"),
         let lbundle = Bundle(url: lproj)
      {
        let strings = lbundle.url(forResource: tableName, withExtension: "strings")
        let stringsdict = lbundle.url(forResource: tableName, withExtension: "stringsdict")

        if strings != nil || stringsdict != nil {
          return (Locale(identifier: language), lbundle)
        }
      }
    }

    // If table is available in main bundle, don't look for localized resources
    let strings = hostingBundle.url(forResource: tableName, withExtension: "strings", subdirectory: nil, localization: nil)
    let stringsdict = hostingBundle.url(forResource: tableName, withExtension: "stringsdict", subdirectory: nil, localization: nil)

    if strings != nil || stringsdict != nil {
      return (applicationLocale, hostingBundle)
    }

    // If table is not found for requested languages, key will be shown
    return nil
  }

  /// Load string from Info.plist file
  fileprivate static func infoPlistString(path: [String], key: String) -> String? {
    var dict = hostingBundle.infoDictionary
    for step in path {
      guard let obj = dict?[step] as? [String: Any] else { return nil }
      dict = obj
    }
    return dict?[key] as? String
  }

  public static func validate() throws {
    try intern.validate()
  }

  #if os(iOS) || os(tvOS)
  /// This `R.storyboard` struct is generated, and contains static references to 2 storyboards.
  public struct storyboard {
    /// Storyboard `LaunchScreen`.
    public static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    public static let main = _R.storyboard.main()

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    public static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "Main", bundle: ...)`
    public static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    #endif

    fileprivate init() {}
  }
  #endif

  /// This `R.color` struct is generated, and contains static references to 1 colors.
  public struct color {
    /// Color `AccentColor`.
    public static let accentColor = Rswift.ColorResource(bundle: R.hostingBundle, name: "AccentColor")

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "AccentColor", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    public static func accentColor(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.accentColor, compatibleWith: traitCollection)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "AccentColor", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    public static func accentColor(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.accentColor.name)
    }
    #endif

    fileprivate init() {}
  }

  /// This `R.image` struct is generated, and contains static references to 46 images.
  public struct image {
    /// Image `icon_button_star`.
    public static let icon_button_star = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_button_star")
    /// Image `icon_button_unstar`.
    public static let icon_button_unstar = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_button_unstar")
    /// Image `icon_button_user_plus`.
    public static let icon_button_user_plus = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_button_user_plus")
    /// Image `icon_button_user_x`.
    public static let icon_button_user_x = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_button_user_x")
    /// Image `icon_cell_acknowledgements`.
    public static let icon_cell_acknowledgements = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_acknowledgements")
    /// Image `icon_cell_check`.
    public static let icon_cell_check = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_check")
    /// Image `icon_cell_cloc`.
    public static let icon_cell_cloc = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_cloc")
    /// Image `icon_cell_company`.
    public static let icon_cell_company = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_company")
    /// Image `icon_cell_contact_no_image`.
    public static let icon_cell_contact_no_image = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_contact_no_image")
    /// Image `icon_cell_created`.
    public static let icon_cell_created = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_created")
    /// Image `icon_cell_dir`.
    public static let icon_cell_dir = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_dir")
    /// Image `icon_cell_disclosure`.
    public static let icon_cell_disclosure = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_disclosure")
    /// Image `icon_cell_events`.
    public static let icon_cell_events = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_events")
    /// Image `icon_cell_issues`.
    public static let icon_cell_issues = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_issues")
    /// Image `icon_cell_language`.
    public static let icon_cell_language = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_language")
    /// Image `icon_cell_link`.
    public static let icon_cell_link = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_link")
    /// Image `icon_cell_logout`.
    public static let icon_cell_logout = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_logout")
    /// Image `icon_cell_night_mode`.
    public static let icon_cell_night_mode = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_night_mode")
    /// Image `icon_cell_profile_summary`.
    public static let icon_cell_profile_summary = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_profile_summary")
    /// Image `icon_cell_readme`.
    public static let icon_cell_readme = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_readme")
    /// Image `icon_cell_releases`.
    public static let icon_cell_releases = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_releases")
    /// Image `icon_cell_remove`.
    public static let icon_cell_remove = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_remove")
    /// Image `icon_cell_size`.
    public static let icon_cell_size = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_size")
    /// Image `icon_cell_source`.
    public static let icon_cell_source = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_source")
    /// Image `icon_cell_star`.
    public static let icon_cell_star = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_star")
    /// Image `icon_cell_theme`.
    public static let icon_cell_theme = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_theme")
    /// Image `icon_cell_updated`.
    public static let icon_cell_updated = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_updated")
    /// Image `icon_cell_whats_new`.
    public static let icon_cell_whats_new = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_whats_new")
    /// Image `icon_navigation_back`.
    public static let icon_navigation_back = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_navigation_back")
    /// Image `icon_navigation_close`.
    public static let icon_navigation_close = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_navigation_close")
    /// Image `icon_navigation_forward`.
    public static let icon_navigation_forward = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_navigation_forward")
    /// Image `icon_navigation_history`.
    public static let icon_navigation_history = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_navigation_history")
    /// Image `icon_navigation_language`.
    public static let icon_navigation_language = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_navigation_language")
    /// Image `icon_navigation_refresh`.
    public static let icon_navigation_refresh = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_navigation_refresh")
    /// Image `icon_navigation_stop`.
    public static let icon_navigation_stop = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_navigation_stop")
    /// Image `icon_navigation_theme`.
    public static let icon_navigation_theme = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_navigation_theme")
    /// Image `icon_navigation_web`.
    public static let icon_navigation_web = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_navigation_web")
    /// Image `icon_tabbar_activity`.
    public static let icon_tabbar_activity = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_tabbar_activity")
    /// Image `icon_tabbar_login`.
    public static let icon_tabbar_login = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_tabbar_login")
    /// Image `icon_tabbar_news`.
    public static let icon_tabbar_news = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_tabbar_news")
    /// Image `icon_tabbar_profile`.
    public static let icon_tabbar_profile = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_tabbar_profile")
    /// Image `icon_tabbar_search`.
    public static let icon_tabbar_search = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_tabbar_search")
    /// Image `icon_tabbar_settings`.
    public static let icon_tabbar_settings = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_tabbar_settings")
    /// Image `icon_toast_error`.
    public static let icon_toast_error = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_toast_error")
    /// Image `icon_toast_success`.
    public static let icon_toast_success = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_toast_success")
    /// Image `icon_toast_warning`.
    public static let icon_toast_warning = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_toast_warning")

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_button_star", bundle: ..., traitCollection: ...)`
    public static func icon_button_star(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_button_star, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_button_unstar", bundle: ..., traitCollection: ...)`
    public static func icon_button_unstar(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_button_unstar, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_button_user_plus", bundle: ..., traitCollection: ...)`
    public static func icon_button_user_plus(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_button_user_plus, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_button_user_x", bundle: ..., traitCollection: ...)`
    public static func icon_button_user_x(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_button_user_x, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_acknowledgements", bundle: ..., traitCollection: ...)`
    public static func icon_cell_acknowledgements(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_acknowledgements, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_check", bundle: ..., traitCollection: ...)`
    public static func icon_cell_check(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_check, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_cloc", bundle: ..., traitCollection: ...)`
    public static func icon_cell_cloc(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_cloc, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_company", bundle: ..., traitCollection: ...)`
    public static func icon_cell_company(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_company, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_contact_no_image", bundle: ..., traitCollection: ...)`
    public static func icon_cell_contact_no_image(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_contact_no_image, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_created", bundle: ..., traitCollection: ...)`
    public static func icon_cell_created(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_created, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_dir", bundle: ..., traitCollection: ...)`
    public static func icon_cell_dir(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_dir, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_disclosure", bundle: ..., traitCollection: ...)`
    public static func icon_cell_disclosure(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_disclosure, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_events", bundle: ..., traitCollection: ...)`
    public static func icon_cell_events(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_events, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_issues", bundle: ..., traitCollection: ...)`
    public static func icon_cell_issues(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_issues, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_language", bundle: ..., traitCollection: ...)`
    public static func icon_cell_language(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_language, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_link", bundle: ..., traitCollection: ...)`
    public static func icon_cell_link(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_link, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_logout", bundle: ..., traitCollection: ...)`
    public static func icon_cell_logout(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_logout, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_night_mode", bundle: ..., traitCollection: ...)`
    public static func icon_cell_night_mode(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_night_mode, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_profile_summary", bundle: ..., traitCollection: ...)`
    public static func icon_cell_profile_summary(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_profile_summary, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_readme", bundle: ..., traitCollection: ...)`
    public static func icon_cell_readme(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_readme, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_releases", bundle: ..., traitCollection: ...)`
    public static func icon_cell_releases(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_releases, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_remove", bundle: ..., traitCollection: ...)`
    public static func icon_cell_remove(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_remove, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_size", bundle: ..., traitCollection: ...)`
    public static func icon_cell_size(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_size, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_source", bundle: ..., traitCollection: ...)`
    public static func icon_cell_source(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_source, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_star", bundle: ..., traitCollection: ...)`
    public static func icon_cell_star(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_star, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_theme", bundle: ..., traitCollection: ...)`
    public static func icon_cell_theme(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_theme, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_updated", bundle: ..., traitCollection: ...)`
    public static func icon_cell_updated(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_updated, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_whats_new", bundle: ..., traitCollection: ...)`
    public static func icon_cell_whats_new(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_whats_new, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_navigation_back", bundle: ..., traitCollection: ...)`
    public static func icon_navigation_back(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_navigation_back, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_navigation_close", bundle: ..., traitCollection: ...)`
    public static func icon_navigation_close(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_navigation_close, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_navigation_forward", bundle: ..., traitCollection: ...)`
    public static func icon_navigation_forward(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_navigation_forward, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_navigation_history", bundle: ..., traitCollection: ...)`
    public static func icon_navigation_history(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_navigation_history, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_navigation_language", bundle: ..., traitCollection: ...)`
    public static func icon_navigation_language(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_navigation_language, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_navigation_refresh", bundle: ..., traitCollection: ...)`
    public static func icon_navigation_refresh(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_navigation_refresh, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_navigation_stop", bundle: ..., traitCollection: ...)`
    public static func icon_navigation_stop(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_navigation_stop, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_navigation_theme", bundle: ..., traitCollection: ...)`
    public static func icon_navigation_theme(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_navigation_theme, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_navigation_web", bundle: ..., traitCollection: ...)`
    public static func icon_navigation_web(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_navigation_web, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_tabbar_activity", bundle: ..., traitCollection: ...)`
    public static func icon_tabbar_activity(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_tabbar_activity, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_tabbar_login", bundle: ..., traitCollection: ...)`
    public static func icon_tabbar_login(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_tabbar_login, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_tabbar_news", bundle: ..., traitCollection: ...)`
    public static func icon_tabbar_news(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_tabbar_news, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_tabbar_profile", bundle: ..., traitCollection: ...)`
    public static func icon_tabbar_profile(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_tabbar_profile, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_tabbar_search", bundle: ..., traitCollection: ...)`
    public static func icon_tabbar_search(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_tabbar_search, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_tabbar_settings", bundle: ..., traitCollection: ...)`
    public static func icon_tabbar_settings(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_tabbar_settings, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_toast_error", bundle: ..., traitCollection: ...)`
    public static func icon_toast_error(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_toast_error, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_toast_success", bundle: ..., traitCollection: ...)`
    public static func icon_toast_success(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_toast_success, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_toast_warning", bundle: ..., traitCollection: ...)`
    public static func icon_toast_warning(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_toast_warning, compatibleWith: traitCollection)
    }
    #endif

    fileprivate init() {}
  }

  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }

    fileprivate init() {}
  }

  fileprivate class Class {}

  fileprivate init() {}
}

public struct _R: Rswift.Validatable {
  public static func validate() throws {
    #if os(iOS) || os(tvOS)
    try storyboard.validate()
    #endif
  }

  #if os(iOS) || os(tvOS)
  public struct storyboard: Rswift.Validatable {
    public static func validate() throws {
      #if os(iOS) || os(tvOS)
      try launchScreen.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try main.validate()
      #endif
    }

    #if os(iOS) || os(tvOS)
    public struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      public typealias InitialController = UIKit.UIViewController

      public let bundle = R.hostingBundle
      public let name = "LaunchScreen"

      public static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    public struct main: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      public typealias InitialController = ExampleViewController

      public let bundle = R.hostingBundle
      public let name = "Main"

      public static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }
    #endif

    fileprivate init() {}
  }
  #endif

  fileprivate init() {}
}