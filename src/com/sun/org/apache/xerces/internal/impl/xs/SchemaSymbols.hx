package com.sun.org.apache.xerces.internal.impl.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2000-2002,2004 The Apache Software Foundation.
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
/**
* Collection of symbols used to parse a Schema Grammar.
*
* @xerces.internal
*
* @author jeffrey rodriguez
*/
extern class SchemaSymbols
{
	public static var URI_XSI(default, null) : String;
	
	public static var XSI_SCHEMALOCATION(default, null) : String;
	
	public static var XSI_NONAMESPACESCHEMALOCATION(default, null) : String;
	
	public static var XSI_TYPE(default, null) : String;
	
	public static var XSI_NIL(default, null) : String;
	
	public static var URI_SCHEMAFORSCHEMA(default, null) : String;
	
	public static var ELT_ALL(default, null) : String;
	
	public static var ELT_ANNOTATION(default, null) : String;
	
	public static var ELT_ANY(default, null) : String;
	
	public static var ELT_ANYATTRIBUTE(default, null) : String;
	
	public static var ELT_APPINFO(default, null) : String;
	
	public static var ELT_ATTRIBUTE(default, null) : String;
	
	public static var ELT_ATTRIBUTEGROUP(default, null) : String;
	
	public static var ELT_CHOICE(default, null) : String;
	
	public static var ELT_COMPLEXCONTENT(default, null) : String;
	
	public static var ELT_COMPLEXTYPE(default, null) : String;
	
	public static var ELT_DOCUMENTATION(default, null) : String;
	
	public static var ELT_ELEMENT(default, null) : String;
	
	public static var ELT_ENUMERATION(default, null) : String;
	
	public static var ELT_EXTENSION(default, null) : String;
	
	public static var ELT_FIELD(default, null) : String;
	
	public static var ELT_FRACTIONDIGITS(default, null) : String;
	
	public static var ELT_GROUP(default, null) : String;
	
	public static var ELT_IMPORT(default, null) : String;
	
	public static var ELT_INCLUDE(default, null) : String;
	
	public static var ELT_KEY(default, null) : String;
	
	public static var ELT_KEYREF(default, null) : String;
	
	public static var ELT_LENGTH(default, null) : String;
	
	public static var ELT_LIST(default, null) : String;
	
	public static var ELT_MAXEXCLUSIVE(default, null) : String;
	
	public static var ELT_MAXINCLUSIVE(default, null) : String;
	
	public static var ELT_MAXLENGTH(default, null) : String;
	
	public static var ELT_MINEXCLUSIVE(default, null) : String;
	
	public static var ELT_MININCLUSIVE(default, null) : String;
	
	public static var ELT_MINLENGTH(default, null) : String;
	
	public static var ELT_NOTATION(default, null) : String;
	
	public static var ELT_PATTERN(default, null) : String;
	
	public static var ELT_REDEFINE(default, null) : String;
	
	public static var ELT_RESTRICTION(default, null) : String;
	
	public static var ELT_SCHEMA(default, null) : String;
	
	public static var ELT_SELECTOR(default, null) : String;
	
	public static var ELT_SEQUENCE(default, null) : String;
	
	public static var ELT_SIMPLECONTENT(default, null) : String;
	
	public static var ELT_SIMPLETYPE(default, null) : String;
	
	public static var ELT_TOTALDIGITS(default, null) : String;
	
	public static var ELT_UNION(default, null) : String;
	
	public static var ELT_UNIQUE(default, null) : String;
	
	public static var ELT_WHITESPACE(default, null) : String;
	
	public static var ATT_ABSTRACT(default, null) : String;
	
	public static var ATT_ATTRIBUTEFORMDEFAULT(default, null) : String;
	
	public static var ATT_BASE(default, null) : String;
	
	public static var ATT_BLOCK(default, null) : String;
	
	public static var ATT_BLOCKDEFAULT(default, null) : String;
	
	public static var ATT_DEFAULT(default, null) : String;
	
	public static var ATT_ELEMENTFORMDEFAULT(default, null) : String;
	
	public static var ATT_FINAL(default, null) : String;
	
	public static var ATT_FINALDEFAULT(default, null) : String;
	
	public static var ATT_FIXED(default, null) : String;
	
	public static var ATT_FORM(default, null) : String;
	
	public static var ATT_ID(default, null) : String;
	
	public static var ATT_ITEMTYPE(default, null) : String;
	
	public static var ATT_MAXOCCURS(default, null) : String;
	
	public static var ATT_MEMBERTYPES(default, null) : String;
	
	public static var ATT_MINOCCURS(default, null) : String;
	
	public static var ATT_MIXED(default, null) : String;
	
	public static var ATT_NAME(default, null) : String;
	
	public static var ATT_NAMESPACE(default, null) : String;
	
	public static var ATT_NILLABLE(default, null) : String;
	
	public static var ATT_PROCESSCONTENTS(default, null) : String;
	
	public static var ATT_REF(default, null) : String;
	
	public static var ATT_REFER(default, null) : String;
	
	public static var ATT_SCHEMALOCATION(default, null) : String;
	
	public static var ATT_SOURCE(default, null) : String;
	
	public static var ATT_SUBSTITUTIONGROUP(default, null) : String;
	
	public static var ATT_SYSTEM(default, null) : String;
	
	public static var ATT_PUBLIC(default, null) : String;
	
	public static var ATT_TARGETNAMESPACE(default, null) : String;
	
	public static var ATT_TYPE(default, null) : String;
	
	public static var ATT_USE(default, null) : String;
	
	public static var ATT_VALUE(default, null) : String;
	
	public static var ATT_VERSION(default, null) : String;
	
	public static var ATT_XML_LANG(default, null) : String;
	
	public static var ATT_XPATH(default, null) : String;
	
	public static var ATTVAL_TWOPOUNDANY(default, null) : String;
	
	public static var ATTVAL_TWOPOUNDLOCAL(default, null) : String;
	
	public static var ATTVAL_TWOPOUNDOTHER(default, null) : String;
	
	public static var ATTVAL_TWOPOUNDTARGETNS(default, null) : String;
	
	public static var ATTVAL_POUNDALL(default, null) : String;
	
	public static var ATTVAL_FALSE_0(default, null) : String;
	
	public static var ATTVAL_TRUE_1(default, null) : String;
	
	public static var ATTVAL_ANYSIMPLETYPE(default, null) : String;
	
	public static var ATTVAL_ANYTYPE(default, null) : String;
	
	public static var ATTVAL_ANYURI(default, null) : String;
	
	public static var ATTVAL_BASE64BINARY(default, null) : String;
	
	public static var ATTVAL_BOOLEAN(default, null) : String;
	
	public static var ATTVAL_BYTE(default, null) : String;
	
	public static var ATTVAL_COLLAPSE(default, null) : String;
	
	public static var ATTVAL_DATE(default, null) : String;
	
	public static var ATTVAL_DATETIME(default, null) : String;
	
	public static var ATTVAL_DAY(default, null) : String;
	
	public static var ATTVAL_DECIMAL(default, null) : String;
	
	public static var ATTVAL_DOUBLE(default, null) : String;
	
	public static var ATTVAL_DURATION(default, null) : String;
	
	public static var ATTVAL_ENTITY(default, null) : String;
	
	public static var ATTVAL_ENTITIES(default, null) : String;
	
	public static var ATTVAL_EXTENSION(default, null) : String;
	
	public static var ATTVAL_FALSE(default, null) : String;
	
	public static var ATTVAL_FLOAT(default, null) : String;
	
	public static var ATTVAL_HEXBINARY(default, null) : String;
	
	public static var ATTVAL_ID(default, null) : String;
	
	public static var ATTVAL_IDREF(default, null) : String;
	
	public static var ATTVAL_IDREFS(default, null) : String;
	
	public static var ATTVAL_INT(default, null) : String;
	
	public static var ATTVAL_INTEGER(default, null) : String;
	
	public static var ATTVAL_LANGUAGE(default, null) : String;
	
	public static var ATTVAL_LAX(default, null) : String;
	
	public static var ATTVAL_LIST(default, null) : String;
	
	public static var ATTVAL_LONG(default, null) : String;
	
	public static var ATTVAL_NAME(default, null) : String;
	
	public static var ATTVAL_NEGATIVEINTEGER(default, null) : String;
	
	public static var ATTVAL_MONTH(default, null) : String;
	
	public static var ATTVAL_MONTHDAY(default, null) : String;
	
	public static var ATTVAL_NCNAME(default, null) : String;
	
	public static var ATTVAL_NMTOKEN(default, null) : String;
	
	public static var ATTVAL_NMTOKENS(default, null) : String;
	
	public static var ATTVAL_NONNEGATIVEINTEGER(default, null) : String;
	
	public static var ATTVAL_NONPOSITIVEINTEGER(default, null) : String;
	
	public static var ATTVAL_NORMALIZEDSTRING(default, null) : String;
	
	public static var ATTVAL_NOTATION(default, null) : String;
	
	public static var ATTVAL_OPTIONAL(default, null) : String;
	
	public static var ATTVAL_POSITIVEINTEGER(default, null) : String;
	
	public static var ATTVAL_PRESERVE(default, null) : String;
	
	public static var ATTVAL_PROHIBITED(default, null) : String;
	
	public static var ATTVAL_QNAME(default, null) : String;
	
	public static var ATTVAL_QUALIFIED(default, null) : String;
	
	public static var ATTVAL_REPLACE(default, null) : String;
	
	public static var ATTVAL_REQUIRED(default, null) : String;
	
	public static var ATTVAL_RESTRICTION(default, null) : String;
	
	public static var ATTVAL_SHORT(default, null) : String;
	
	public static var ATTVAL_SKIP(default, null) : String;
	
	public static var ATTVAL_STRICT(default, null) : String;
	
	public static var ATTVAL_STRING(default, null) : String;
	
	public static var ATTVAL_SUBSTITUTION(default, null) : String;
	
	public static var ATTVAL_TIME(default, null) : String;
	
	public static var ATTVAL_TOKEN(default, null) : String;
	
	public static var ATTVAL_TRUE(default, null) : String;
	
	public static var ATTVAL_UNBOUNDED(default, null) : String;
	
	public static var ATTVAL_UNION(default, null) : String;
	
	public static var ATTVAL_UNQUALIFIED(default, null) : String;
	
	public static var ATTVAL_UNSIGNEDBYTE(default, null) : String;
	
	public static var ATTVAL_UNSIGNEDINT(default, null) : String;
	
	public static var ATTVAL_UNSIGNEDLONG(default, null) : String;
	
	public static var ATTVAL_UNSIGNEDSHORT(default, null) : String;
	
	public static var ATTVAL_YEAR(default, null) : String;
	
	public static var ATTVAL_YEARMONTH(default, null) : String;
	
	public static var FORM_UNQUALIFIED(default, null) : java.StdTypes.Int16;
	
	public static var FORM_QUALIFIED(default, null) : java.StdTypes.Int16;
	
	public static var USE_OPTIONAL(default, null) : java.StdTypes.Int16;
	
	public static var USE_REQUIRED(default, null) : java.StdTypes.Int16;
	
	public static var USE_PROHIBITED(default, null) : java.StdTypes.Int16;
	
	public static var OCCURRENCE_UNBOUNDED(default, null) : Int;
	
	
}
