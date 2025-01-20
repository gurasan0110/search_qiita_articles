///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsJa = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get datePattern => 'yyyy年MM月dd日';
	String get searchArticles => '記事を検索';
	late final TranslationsSearchResultsJa searchResults = TranslationsSearchResultsJa._(_root);
}

// Path: searchResults
class TranslationsSearchResultsJa {
	TranslationsSearchResultsJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String queryIsNotNull({required Object query, required Object totalCount}) => '「${query}」の検索結果：${totalCount}件';
	String queryIsNull({required Object totalCount}) => '検索結果：${totalCount}件';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'datePattern': return 'yyyy年MM月dd日';
			case 'searchArticles': return '記事を検索';
			case 'searchResults.queryIsNotNull': return ({required Object query, required Object totalCount}) => '「${query}」の検索結果：${totalCount}件';
			case 'searchResults.queryIsNull': return ({required Object totalCount}) => '検索結果：${totalCount}件';
			default: return null;
		}
	}
}

