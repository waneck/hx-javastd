package com.sun.org.apache.xerces.internal.impl;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
*/
/*
* Copyright 2005 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class Constants
{
	/**
	* Commonly used constants.
	*
	* @xerces.internal
	*
	* @author Andy Clark, IBM
	*
	* @version $Id: Constants.java,v 1.14 2010-11-01 04:39:40 joehw Exp $
	*/
	@:public @:static @:final public static var NS_XMLSCHEMA(default, null) : String;
	
	@:public @:static @:final public static var NS_DTD(default, null) : String;
	
	@:public @:static @:final public static var SUN_SCHEMA_FEATURE_PREFIX(default, null) : String;
	
	@:public @:static @:final public static var SUN_REPORT_IGNORED_ELEMENT_CONTENT_WHITESPACE(default, null) : String;
	
	@:public @:static @:final public static var ZEPHYR_PROPERTY_PREFIX(default, null) : String;
	
	@:public @:static @:final public static var STAX_PROPERTIES(default, null) : String;
	
	@:public @:static @:final public static var STAX_ENTITY_RESOLVER_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var STAX_REPORT_CDATA_EVENT(default, null) : String;
	
	@:public @:static @:final public static var READER_IN_DEFINED_STATE(default, null) : String;
	
	@:public @:static @:final public static var ADD_NAMESPACE_DECL_AS_ATTRIBUTE(default, null) : String;
	
	@:public @:static @:final public static var ESCAPE_CHARACTERS(default, null) : String;
	
	@:public @:static @:final public static var REUSE_INSTANCE(default, null) : String;
	
	@:public @:static @:final public static var SUN_DOM_PROPERTY_PREFIX(default, null) : String;
	
	@:public @:static @:final public static var SUN_DOM_ANCESTOR_CHECCK(default, null) : String;
	
	/**
	* If true, ignore DOCTYPE declaration as if it wasn't present at all.
	* Note that this is a violation of the XML recommendation.
	* The full property name is prefixed by {@link #ZEPHYR_PROPERTY_PREFIX}.
	*/
	@:public @:static @:final public static var IGNORE_EXTERNAL_DTD(default, null) : String;
	
	/** SAX feature prefix ("http://xml.org/sax/features/"). */
	@:public @:static @:final public static var SAX_FEATURE_PREFIX(default, null) : String;
	
	@:public @:static @:final public static var NAMESPACES_FEATURE(default, null) : String;
	
	/** Namespace prefixes feature ("namespace-prefixes"). */
	@:public @:static @:final public static var NAMESPACE_PREFIXES_FEATURE(default, null) : String;
	
	/** String interning feature ("string-interning"). */
	@:public @:static @:final public static var STRING_INTERNING_FEATURE(default, null) : String;
	
	/** Validation feature ("validation"). */
	@:public @:static @:final public static var VALIDATION_FEATURE(default, null) : String;
	
	/** External general entities feature ("external-general-entities "). */
	@:public @:static @:final public static var EXTERNAL_GENERAL_ENTITIES_FEATURE(default, null) : String;
	
	/** External parameter entities feature ("external-parameter-entities "). */
	@:public @:static @:final public static var EXTERNAL_PARAMETER_ENTITIES_FEATURE(default, null) : String;
	
	/** Lexical handler parameter entities feature ("lexical-handler/parameter-entities"). */
	@:public @:static @:final public static var LEXICAL_HANDLER_PARAMETER_ENTITIES_FEATURE(default, null) : String;
	
	/** Is standalone feature ("is-standalone"). */
	@:public @:static @:final public static var IS_STANDALONE_FEATURE(default, null) : String;
	
	/** Resolve DTD URIs feature ("resolve-dtd-uris"). */
	@:public @:static @:final public static var RESOLVE_DTD_URIS_FEATURE(default, null) : String;
	
	/** Use Attributes2 feature ("use-attributes2"). */
	@:public @:static @:final public static var USE_ATTRIBUTES2_FEATURE(default, null) : String;
	
	/** Use Locator2 feature ("use-locator2"). */
	@:public @:static @:final public static var USE_LOCATOR2_FEATURE(default, null) : String;
	
	/** Use EntityResolver2 feature ("use-entity-resolver2"). */
	@:public @:static @:final public static var USE_ENTITY_RESOLVER2_FEATURE(default, null) : String;
	
	/** Unicode normalization checking feature ("unicode-normalization-checking"). */
	@:public @:static @:final public static var UNICODE_NORMALIZATION_CHECKING_FEATURE(default, null) : String;
	
	/** xmlns URIs feature ("xmlns-uris"). */
	@:public @:static @:final public static var XMLNS_URIS_FEATURE(default, null) : String;
	
	/** XML 1.1 feature ("xml-1.1"). */
	@:public @:static @:final public static var XML_11_FEATURE(default, null) : String;
	
	/** Allow unparsed entity and notation declaration events to be sent after the end DTD event ("allow-dtd-events-after-endDTD") */
	@:public @:static @:final public static var ALLOW_DTD_EVENTS_AFTER_ENDDTD_FEATURE(default, null) : String;
	
	/** SAX property prefix ("http://xml.org/sax/properties/"). */
	@:public @:static @:final public static var SAX_PROPERTY_PREFIX(default, null) : String;
	
	/** Declaration handler property ("declaration-handler"). */
	@:public @:static @:final public static var DECLARATION_HANDLER_PROPERTY(default, null) : String;
	
	/** Lexical handler property ("lexical-handler"). */
	@:public @:static @:final public static var LEXICAL_HANDLER_PROPERTY(default, null) : String;
	
	/** DOM node property ("dom-node"). */
	@:public @:static @:final public static var DOM_NODE_PROPERTY(default, null) : String;
	
	/** XML string property ("xml-string"). */
	@:public @:static @:final public static var XML_STRING_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var FEATURE_SECURE_PROCESSING(default, null) : String;
	
	@:public @:static @:final public static var ORACLE_FEATURE_SERVICE_MECHANISM(default, null) : String;
	
	/** Document XML version property ("document-xml-version"). */
	@:public @:static @:final public static var DOCUMENT_XML_VERSION_PROPERTY(default, null) : String;
	
	/** JAXP property prefix ("http://java.sun.com/xml/jaxp/properties/"). */
	@:public @:static @:final public static var JAXP_PROPERTY_PREFIX(default, null) : String;
	
	/** JAXP schemaSource property: when used internally may include DTD sources (DOM) */
	@:public @:static @:final public static var SCHEMA_SOURCE(default, null) : String;
	
	/** JAXP schemaSource language: when used internally may include DTD namespace (DOM) */
	@:public @:static @:final public static var SCHEMA_LANGUAGE(default, null) : String;
	
	@:public @:static @:final public static var SYSTEM_PROPERTY_ELEMENT_ATTRIBUTE_LIMIT(default, null) : String;
	
	/** Comments feature ("include-comments"). */
	@:public @:static @:final public static var INCLUDE_COMMENTS_FEATURE(default, null) : String;
	
	/** Create cdata nodes feature ("create-cdata-nodes"). */
	@:public @:static @:final public static var CREATE_CDATA_NODES_FEATURE(default, null) : String;
	
	/** Feature id: load as infoset. */
	@:public @:static @:final public static var LOAD_AS_INFOSET(default, null) : String;
	
	@:public @:static @:final public static var DOM_CANONICAL_FORM(default, null) : String;
	
	@:public @:static @:final public static var DOM_CDATA_SECTIONS(default, null) : String;
	
	@:public @:static @:final public static var DOM_COMMENTS(default, null) : String;
	
	@:public @:static @:final public static var DOM_CHARSET_OVERRIDES_XML_ENCODING(default, null) : String;
	
	@:public @:static @:final public static var DOM_DATATYPE_NORMALIZATION(default, null) : String;
	
	@:public @:static @:final public static var DOM_ENTITIES(default, null) : String;
	
	@:public @:static @:final public static var DOM_INFOSET(default, null) : String;
	
	@:public @:static @:final public static var DOM_NAMESPACES(default, null) : String;
	
	@:public @:static @:final public static var DOM_NAMESPACE_DECLARATIONS(default, null) : String;
	
	@:public @:static @:final public static var DOM_SUPPORTED_MEDIATYPES_ONLY(default, null) : String;
	
	@:public @:static @:final public static var DOM_VALIDATE_IF_SCHEMA(default, null) : String;
	
	@:public @:static @:final public static var DOM_VALIDATE(default, null) : String;
	
	@:public @:static @:final public static var DOM_ELEMENT_CONTENT_WHITESPACE(default, null) : String;
	
	@:public @:static @:final public static var DOM_DISCARD_DEFAULT_CONTENT(default, null) : String;
	
	@:public @:static @:final public static var DOM_NORMALIZE_CHARACTERS(default, null) : String;
	
	@:public @:static @:final public static var DOM_CHECK_CHAR_NORMALIZATION(default, null) : String;
	
	@:public @:static @:final public static var DOM_WELLFORMED(default, null) : String;
	
	@:public @:static @:final public static var DOM_SPLIT_CDATA(default, null) : String;
	
	@:public @:static @:final public static var DOM_FORMAT_PRETTY_PRINT(default, null) : String;
	
	@:public @:static @:final public static var DOM_XMLDECL(default, null) : String;
	
	@:public @:static @:final public static var DOM_UNKNOWNCHARS(default, null) : String;
	
	@:public @:static @:final public static var DOM_CERTIFIED(default, null) : String;
	
	@:public @:static @:final public static var DOM_DISALLOW_DOCTYPE(default, null) : String;
	
	@:public @:static @:final public static var DOM_IGNORE_UNKNOWN_CHARACTER_DENORMALIZATIONS(default, null) : String;
	
	@:public @:static @:final public static var DOM_RESOURCE_RESOLVER(default, null) : String;
	
	@:public @:static @:final public static var DOM_ERROR_HANDLER(default, null) : String;
	
	@:public @:static @:final public static var DOM_SCHEMA_TYPE(default, null) : String;
	
	@:public @:static @:final public static var DOM_SCHEMA_LOCATION(default, null) : String;
	
	@:public @:static @:final public static var DOM_ANCESTOR_CHECCK(default, null) : String;
	
	@:public @:static @:final public static var DOM_PSVI(default, null) : String;
	
	/** Xerces features prefix ("http://apache.org/xml/features/"). */
	@:public @:static @:final public static var XERCES_FEATURE_PREFIX(default, null) : String;
	
	/** Schema validation feature ("validation/schema"). */
	@:public @:static @:final public static var SCHEMA_VALIDATION_FEATURE(default, null) : String;
	
	/** Expose schema normalized values */
	@:public @:static @:final public static var SCHEMA_NORMALIZED_VALUE(default, null) : String;
	
	/** Send schema default value via characters() */
	@:public @:static @:final public static var SCHEMA_ELEMENT_DEFAULT(default, null) : String;
	
	/** Schema full constraint checking ("validation/schema-full-checking"). */
	@:public @:static @:final public static var SCHEMA_FULL_CHECKING(default, null) : String;
	
	/** Augment Post-Schema-Validation-Infoset */
	@:public @:static @:final public static var SCHEMA_AUGMENT_PSVI(default, null) : String;
	
	/** Dynamic validation feature ("validation/dynamic"). */
	@:public @:static @:final public static var DYNAMIC_VALIDATION_FEATURE(default, null) : String;
	
	/** Warn on duplicate attribute declaration feature ("validation/warn-on-duplicate-attdef"). */
	@:public @:static @:final public static var WARN_ON_DUPLICATE_ATTDEF_FEATURE(default, null) : String;
	
	/** Warn on undeclared element feature ("validation/warn-on-undeclared-elemdef"). */
	@:public @:static @:final public static var WARN_ON_UNDECLARED_ELEMDEF_FEATURE(default, null) : String;
	
	/** Warn on duplicate entity declaration feature ("warn-on-duplicate-entitydef"). */
	@:public @:static @:final public static var WARN_ON_DUPLICATE_ENTITYDEF_FEATURE(default, null) : String;
	
	/** Allow Java encoding names feature ("allow-java-encodings"). */
	@:public @:static @:final public static var ALLOW_JAVA_ENCODINGS_FEATURE(default, null) : String;
	
	/** Disallow DOCTYPE declaration feature ("disallow-doctype-decl"). */
	@:public @:static @:final public static var DISALLOW_DOCTYPE_DECL_FEATURE(default, null) : String;
	
	/** Continue after fatal error feature ("continue-after-fatal-error"). */
	@:public @:static @:final public static var CONTINUE_AFTER_FATAL_ERROR_FEATURE(default, null) : String;
	
	/** Load dtd grammar when nonvalidating feature ("nonvalidating/load-dtd-grammar"). */
	@:public @:static @:final public static var LOAD_DTD_GRAMMAR_FEATURE(default, null) : String;
	
	/** Load external dtd when nonvalidating feature ("nonvalidating/load-external-dtd"). */
	@:public @:static @:final public static var LOAD_EXTERNAL_DTD_FEATURE(default, null) : String;
	
	/** Defer node expansion feature ("dom/defer-node-expansion"). */
	@:public @:static @:final public static var DEFER_NODE_EXPANSION_FEATURE(default, null) : String;
	
	/** Create entity reference nodes feature ("dom/create-entity-ref-nodes"). */
	@:public @:static @:final public static var CREATE_ENTITY_REF_NODES_FEATURE(default, null) : String;
	
	/** Include ignorable whitespace feature ("dom/include-ignorable-whitespace"). */
	@:public @:static @:final public static var INCLUDE_IGNORABLE_WHITESPACE(default, null) : String;
	
	/** Default attribute values feature ("validation/default-attribute-values"). */
	@:public @:static @:final public static var DEFAULT_ATTRIBUTE_VALUES_FEATURE(default, null) : String;
	
	/** Validate content models feature ("validation/validate-content-models"). */
	@:public @:static @:final public static var VALIDATE_CONTENT_MODELS_FEATURE(default, null) : String;
	
	/** Validate datatypes feature ("validation/validate-datatypes"). */
	@:public @:static @:final public static var VALIDATE_DATATYPES_FEATURE(default, null) : String;
	
	/** Balance syntax trees feature ("validation/balance-syntax-trees"). */
	@:public @:static @:final public static var BALANCE_SYNTAX_TREES(default, null) : String;
	
	/** Notify character references feature (scanner/notify-char-refs"). */
	@:public @:static @:final public static var NOTIFY_CHAR_REFS_FEATURE(default, null) : String;
	
	/** Notify built-in (&amp;amp;, etc.) references feature (scanner/notify-builtin-refs"). */
	@:public @:static @:final public static var NOTIFY_BUILTIN_REFS_FEATURE(default, null) : String;
	
	/** Standard URI conformant feature ("standard-uri-conformant"). */
	@:public @:static @:final public static var STANDARD_URI_CONFORMANT_FEATURE(default, null) : String;
	
	/** Generate synthetic annotations feature ("generate-synthetic-annotations"). */
	@:public @:static @:final public static var GENERATE_SYNTHETIC_ANNOTATIONS_FEATURE(default, null) : String;
	
	/** Validate annotations feature ("validate-annotations"). */
	@:public @:static @:final public static var VALIDATE_ANNOTATIONS_FEATURE(default, null) : String;
	
	/** Honour all schemaLocations feature ("honour-all-schemaLocations"). */
	@:public @:static @:final public static var HONOUR_ALL_SCHEMALOCATIONS_FEATURE(default, null) : String;
	
	/** Namespace growth feature ("namespace-growth"). */
	@:public @:static @:final public static var NAMESPACE_GROWTH_FEATURE(default, null) : String;
	
	/** Tolerate duplicates feature ("internal/tolerate-duplicates"). */
	@:public @:static @:final public static var TOLERATE_DUPLICATES_FEATURE(default, null) : String;
	
	/** XInclude processing feature ("xinclude"). */
	@:public @:static @:final public static var XINCLUDE_FEATURE(default, null) : String;
	
	/** XInclude fixup base URIs feature ("xinclude/fixup-base-uris"). */
	@:public @:static @:final public static var XINCLUDE_FIXUP_BASE_URIS_FEATURE(default, null) : String;
	
	/** XInclude fixup language feature ("xinclude/fixup-language"). */
	@:public @:static @:final public static var XINCLUDE_FIXUP_LANGUAGE_FEATURE(default, null) : String;
	
	/**
	* Internal feature. When set to true the schema validator will only use
	* schema components from the grammar pool provided.
	*/
	@:public @:static @:final public static var USE_GRAMMAR_POOL_ONLY_FEATURE(default, null) : String;
	
	/** Internal performance related feature:
	* false - the parser settings (features/properties) have not changed between 2 parses
	* true - the parser settings have changed between 2 parses
	* NOTE: this feature should only be set by the parser configuration.
	*/
	@:public @:static @:final public static var PARSER_SETTINGS(default, null) : String;
	
	/** Feature to make XML Processor XInclude Aware */
	@:public @:static @:final public static var XINCLUDE_AWARE(default, null) : String;
	
	/** Ignore xsi:schemaLocation and xsi:noNamespaceSchemaLocation. */
	@:public @:static @:final public static var IGNORE_SCHEMA_LOCATION_HINTS(default, null) : String;
	
	/**
	* When true, the schema processor will change characters events
	* to ignorableWhitespaces events, when characters are expected to
	* only contain ignorable whitespaces.
	*/
	@:public @:static @:final public static var CHANGE_IGNORABLE_CHARACTERS_INTO_IGNORABLE_WHITESPACES(default, null) : String;
	
	/** Xerces properties prefix ("http://apache.org/xml/properties/"). */
	@:public @:static @:final public static var XERCES_PROPERTY_PREFIX(default, null) : String;
	
	/** Current element node property ("dom/current-element-node"). */
	@:public @:static @:final public static var CURRENT_ELEMENT_NODE_PROPERTY(default, null) : String;
	
	/** Document class name property ("dom/document-class-name"). */
	@:public @:static @:final public static var DOCUMENT_CLASS_NAME_PROPERTY(default, null) : String;
	
	/** Symbol table property ("internal/symbol-table"). */
	@:public @:static @:final public static var SYMBOL_TABLE_PROPERTY(default, null) : String;
	
	/** Error reporter property ("internal/error-reporter"). */
	@:public @:static @:final public static var ERROR_REPORTER_PROPERTY(default, null) : String;
	
	/** Error handler property ("internal/error-handler"). */
	@:public @:static @:final public static var ERROR_HANDLER_PROPERTY(default, null) : String;
	
	/** XInclude handler property ("internal/xinclude-handler"). */
	@:public @:static @:final public static var XINCLUDE_HANDLER_PROPERTY(default, null) : String;
	
	/** XPointer handler property ("internal/xpointer-handler"). */
	@:public @:static @:final public static var XPOINTER_HANDLER_PROPERTY(default, null) : String;
	
	/** Entity manager property ("internal/entity-manager"). */
	@:public @:static @:final public static var ENTITY_MANAGER_PROPERTY(default, null) : String;
	
	/** Input buffer size property ("input-buffer-size"). */
	@:public @:static @:final public static var BUFFER_SIZE_PROPERTY(default, null) : String;
	
	/** Security manager property ("security-manager"). */
	@:public @:static @:final public static var SECURITY_MANAGER_PROPERTY(default, null) : String;
	
	/** Locale property ("locale"). */
	@:public @:static @:final public static var LOCALE_PROPERTY(default, null) : String;
	
	/** property identifier: security manager. */
	@:protected @:static @:final private static var SECURITY_MANAGER(default, null) : String;
	
	@:public @:static @:final public static var ENTITY_RESOLVER_PROPERTY(default, null) : String;
	
	/** Grammar pool property ("internal/grammar-pool"). */
	@:public @:static @:final public static var XMLGRAMMAR_POOL_PROPERTY(default, null) : String;
	
	/** Datatype validator factory ("internal/datatype-validator-factory"). */
	@:public @:static @:final public static var DATATYPE_VALIDATOR_FACTORY_PROPERTY(default, null) : String;
	
	/** Document scanner property ("internal/document-scanner"). */
	@:public @:static @:final public static var DOCUMENT_SCANNER_PROPERTY(default, null) : String;
	
	/** DTD scanner property ("internal/dtd-scanner"). */
	@:public @:static @:final public static var DTD_SCANNER_PROPERTY(default, null) : String;
	
	/** DTD processor property ("internal/dtd-processor"). */
	@:public @:static @:final public static var DTD_PROCESSOR_PROPERTY(default, null) : String;
	
	/** Validator property ("internal/validator"). */
	@:public @:static @:final public static var VALIDATOR_PROPERTY(default, null) : String;
	
	/** Validator property ("internal/validator/dtd"). */
	@:public @:static @:final public static var DTD_VALIDATOR_PROPERTY(default, null) : String;
	
	/** Validator property ("internal/validator/schema"). */
	@:public @:static @:final public static var SCHEMA_VALIDATOR_PROPERTY(default, null) : String;
	
	/** No namespace schema location property ("schema/external-schemaLocation"). */
	@:public @:static @:final public static var SCHEMA_LOCATION(default, null) : String;
	
	/** Schema location property ("schema/external-noNamespaceSchemaLocation"). */
	@:public @:static @:final public static var SCHEMA_NONS_LOCATION(default, null) : String;
	
	/** Namespace binder property ("internal/namespace-binder"). */
	@:public @:static @:final public static var NAMESPACE_BINDER_PROPERTY(default, null) : String;
	
	/** Namespace context property ("internal/namespace-context"). */
	@:public @:static @:final public static var NAMESPACE_CONTEXT_PROPERTY(default, null) : String;
	
	/** Validation manager property ("internal/validation-manager"). */
	@:public @:static @:final public static var VALIDATION_MANAGER_PROPERTY(default, null) : String;
	
	/** XPointer Schema property ("xpointer-schema"). */
	@:public @:static @:final public static var XPOINTER_SCHEMA_PROPERTY(default, null) : String;
	
	/** Schema element declaration for the root element in a document ("internal/validation/schema/dv-factory"). */
	@:public @:static @:final public static var SCHEMA_DV_FACTORY_PROPERTY(default, null) : String;
	
	/** Element PSVI is stored in augmentations using string "ELEMENT_PSVI" */
	@:public @:final @:static public static var ELEMENT_PSVI(default, null) : String;
	
	/** Attribute PSVI is stored in augmentations using string "ATTRIBUTE_PSVI" */
	@:public @:final @:static public static var ATTRIBUTE_PSVI(default, null) : String;
	
	/**
	* Boolean indicating whether an attribute is declared in the DTD is stored
	* in augmentations using the string "ATTRIBUTE_DECLARED". The absence of this
	* augmentation indicates that the attribute was not declared in the DTD.
	*/
	@:public @:final @:static public static var ATTRIBUTE_DECLARED(default, null) : String;
	
	@:public @:final @:static public static var ENTITY_EXPANSION_LIMIT(default, null) : String;
	
	@:public @:final @:static public static var MAX_OCCUR_LIMIT(default, null) : String;
	
	/**
	* {@link org.w3c.dom.TypeInfo} associated with current element/attribute
	* is stored in augmentations using this string as the key.
	*
	* This will ultimately controls {@link com.sun.org.apache.xerces.internal.parsers.AbstractDOMParser}
	* regarding what object the DOM will return from
	* {@link org.w3c.dom.Attr#getSchemaTypeInfo()} and
	* {@link org.w3c.dom.Element#getSchemaTypeInfo()} and
	*/
	@:public @:final @:static public static var TYPEINFO(default, null) : String;
	
	/**
	* Whether an attribute is an id or not is stored in augmentations
	* using this string as the key. The value is {@link Boolean#TRUE}
	* or {@link Boolean#FALSE}.
	*
	* This will ultimately controls {@link com.sun.org.apache.xerces.internal.parsers.AbstractDOMParser}
	* about whether it will mark an attribute as ID or not.
	*/
	@:public @:final @:static public static var ID_ATTRIBUTE(default, null) : String;
	
	/**
	* Boolean indicating whether an entity referenced in the document has
	* not been read is stored in augmentations using the string "ENTITY_SKIPPED".
	* The absence of this augmentation indicates that the entity had a
	* declaration and was expanded.
	*/
	@:public @:final @:static public static var ENTITY_SKIPPED(default, null) : String;
	
	/**
	* Boolean indicating whether a character is a probable white space
	* character (ch <= 0x20) that was the replacement text of a character
	* reference is stored in augmentations using the string "CHAR_REF_PROBABLE_WS".
	* The absence of this augmentation indicates that the character is not
	* probable white space and/or was not included from a character reference.
	*/
	@:public @:final @:static public static var CHAR_REF_PROBABLE_WS(default, null) : String;
	
	/** Boolean indicating if this entity is the last opened entity.
	*
	*@see com.sun.org.apache.xerces.internal.impl.XMLEntityManager#endEntity()
	*@see com.sun.org.apache.xerces.internal.impl.XMLDocumentScannerImpl#endEntity()
	*@see com.sun.org.apache.xerces.internal.impl.XMLDTDScannerImpl#endEntity()
	*/
	@:public @:final @:static public static var LAST_ENTITY(default, null) : String;
	
	@:public @:final @:static public static var XML_VERSION_ERROR(default, null) : java.StdTypes.Int16;
	
	@:public @:final @:static public static var XML_VERSION_1_0(default, null) : java.StdTypes.Int16;
	
	@:public @:final @:static public static var XML_VERSION_1_1(default, null) : java.StdTypes.Int16;
	
	@:public @:final @:static public static var ANONYMOUS_TYPE_NAMESPACE(default, null) : String;
	
	@:public @:final @:static public static var SCHEMA_1_1_SUPPORT(default, null) : Bool;
	
	@:public @:final @:static public static var SCHEMA_VERSION_1_0(default, null) : java.StdTypes.Int16;
	
	@:public @:final @:static public static var SCHEMA_VERSION_1_0_EXTENDED(default, null) : java.StdTypes.Int16;
	
	/** Returns an enumeration of the SAX features. */
	@:overload @:public @:static public static function getSAXFeatures() : java.util.Enumeration<Dynamic>;
	
	/** Returns an enumeration of the SAX properties. */
	@:overload @:public @:static public static function getSAXProperties() : java.util.Enumeration<Dynamic>;
	
	/** Returns an enumeration of the Xerces features. */
	@:overload @:public @:static public static function getXercesFeatures() : java.util.Enumeration<Dynamic>;
	
	/** Returns an enumeration of the Xerces properties. */
	@:overload @:public @:static public static function getXercesProperties() : java.util.Enumeration<Dynamic>;
	
	/** Prints all of the constants to standard output. */
	@:overload @:public @:static public static function main(argv : java.NativeArray<String>) : Void;
	
	
}
/**
* An array enumeration.
*
* @author Andy Clark, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$Constants$ArrayEnumeration') @:internal extern class Constants_ArrayEnumeration implements java.util.Enumeration<Dynamic>
{
	/** Constructs an array enumeration. */
	@:overload @:public public function new(array : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Tests if this enumeration contains more elements.
	*
	* @return  <code>true</code> if this enumeration contains more elements;
	*          <code>false</code> otherwise.
	* @since   JDK1.0
	*/
	@:require(java0) @:overload @:public public function hasMoreElements() : Bool;
	
	/**
	* Returns the next element of this enumeration.
	*
	* @return     the next element of this enumeration.
	* @exception  NoSuchElementException  if no more elements exist.
	* @since      JDK1.0
	*/
	@:require(java0) @:overload @:public public function nextElement() : Dynamic;
	
	
}
