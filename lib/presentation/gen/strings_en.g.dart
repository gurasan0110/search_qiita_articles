///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsEn implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEn _root = this; // ignore: unused_field

	// Translations
	@override String get datePattern => 'yyyy/MM/dd';
	@override String get searchArticles => 'Search articles';
	@override late final _TranslationsSearchResultsEn searchResults = _TranslationsSearchResultsEn._(_root);
}

// Path: searchResults
class _TranslationsSearchResultsEn implements TranslationsSearchResultsJa {
	_TranslationsSearchResultsEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String queryIsNotNull({required Object totalCount, required Object query}) => '${totalCount} search results for "${query}"';
	@override String queryIsNull({required Object totalCount}) => '${totalCount} search results';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'datePattern': return 'yyyy/MM/dd';
			case 'searchArticles': return 'Search articles';
			case 'searchResults.queryIsNotNull': return ({required Object totalCount, required Object query}) => '${totalCount} search results for "${query}"';
			case 'searchResults.queryIsNull': return ({required Object totalCount}) => '${totalCount} search results';
			default: return null;
		}
	}
}

